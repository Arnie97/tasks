#!/usr/bin/env prolog

% Generate or verify Chinese identity card numbers.

% ?- id('*701011991****234*', Any).
% Any = '37010119910101234x' .

% ?- id('370101199101012345', _).
% false.


id(Pattern, ID) :-
	atom_chars(Pattern, PatternList),
	wildcard(PatternList, IDList),
	atom_chars(ID, IDList),

	sub_atom(ID, 0, 2, _, Division),
	sub_atom(ID, 6, 8, 4, Birthday),
	sub_atom(ID, _, 1, 0, ChecksumChar),

	division(Division),
	birthday(Birthday),
	checksum(IDList, Checksum),
	checksum_char(ChecksumChar, Checksum).


in(X, Y) :- member(X, Y).
:- op(700, xfy, in).


digit(Digit) :-
	atom_chars('0123456789', Digits),
	Digit in Digits.


wildcard([], []).
wildcard([PH|PT], [H|T]) :-
	(PH = *; PH = H),
	(digit(H); H = x, length(T, 0)),
	wildcard(PT, T).


division(Division) :-
	atom_number(Division, Number),
	Number in [
		11, 12, 13, 14, 15,
		21, 22, 23,
		31, 32, 33, 34, 35, 36, 37,
		41, 42, 43, 44, 45, 46,
		50, 51, 52, 53, 54,
		61, 62, 63, 64, 65
	].


birthday(Birthday) :-
	parse_time(Birthday, iso_8601, Timestamp),
	get_time(Now),
	Timestamp < Now,
	Timestamp > Now - 80 * 365 * 86400.


checksum_char(Char, Checksum) :-
	Number is (12 - Checksum) mod 11, (
		Char = x, Number = 10;
		digit(Char), atom_number(Char, Number)
	).


checksum([_], 0).
checksum([H|T], Checksum) :-
	atom_number(H, Number),
	length(T, Shift),
	checksum(T, Rest),
	Checksum is Rest + (Number << Shift) mod 11.
