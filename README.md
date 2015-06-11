Road map 2015
=============

```lisp
(cs
    (0x7DE
        tsh pku nudt
    )
    (0x3D9
        sjtu, whu, zju, nju, hust, ustc, hit, baau,
        tongji, nwPu, neu, uestc@southwest
    )
    (0x0D3
        bupt
    )
)
```

Life
----
* [x] CintaNotes
* [ ] Complete Windows 2012 R2
* [ ] Clipboard Stack
* [ ] Tencent QQ Int'l Portable
    - [ ] Wheel from scratch
    - [ ] Support x86-64
    - [ ] Last Order
    - [ ] Project Pages
* [ ] http://tyvj.cn

Tree Diagram
------------
#### Tree Historical
- [x] baidu pcs
- TrDH Logs
    + [ ] Gist
    + Parser
        * [ ] Headline date
        * [ ] Day and weekday
        * [ ] Morning, noon, evening & night
        * [ ] ~2545
    + Ledger
        * [ ] http://i.sau.edu.cn
        * [ ] ~http://wacai.com/user~~
- [ ] OwnCloud
- [ ] time-machine
    + [x] rsync
    + [ ] vshadow
    + [x] dupemerge

#### Dynamic Programming
- [ ] **pomodoro-timer**: 20 20 20
    + [x] fullscreen
        * [x] pygame (SDL)
    + [ ] structured task list file
- [x] hub aliases
- [x] [bash](http://learnxinyminutes.com/docs/zh-cn/bash-cn)
    + [x] sed
    + [ ] awk
    + [x] msysgit init
    + [x] gethub
- milky
    + [ ] strict subscription checks
    + [ ] Unicode support
    + [ ] Bootstrap
    + Debug
        * [x] BOF & EOF
        * [x] Comments after colon
        * [x] Line comment at the end of the last line in a block
        * [ ] Indent in comments
        * [ ] Escaped line
        * [ ] Clear errors in previous file
    + Main
        * [x] read
        * [x] write
        * [x] arguments
        * [ ] formatter
    + Lexer
        * [ ] Direct I/O Buffer
        * [x] `#define append()`
        * [x] Quoted
        * [x] CRLF -> LF
        * [ ] Tabular
        * [x] Spaces
        * [x] Indent
            - [x] Indent with comments
        * [x] Keywords
        * [x] Operators
        * [x] LL(3)
    + Translator
        * [x] Prototype
            - [x] Recursion
            - [x] Indent of the first line
            - [x] Switch
            - [x] Fallthrough
            - [x] Context check for elif / case
            - [ ] Enum
            - [x] Struct with bit-width
        * [x] Semicolons
            - [x] Preprocessor
            - [x] Empty line
            - [x] Line before indent
            - [x] Line before unindent
        * [x] Goto
    + [x] Error Reporting
        * [ ] Show near-by lines
    + [x] Makefile
        * [x] `make release`
    + [ ] Parser
- Programming
    + [ ] pipetools
    + [x] LISP & HtDP
    + [x] FreeBSD
    + [ ] K&R C
    + [ ] System Calls
    + [ ] Algorithm
    + Vim
        * [ ] Commands
        * [x] Dotfiles
        * [ ] Plugins
    + Sublime
        * [x] Issue: MDE
        * [ ] [EverNote](http://maxiang.info)
        * [x] [web](https://stackedit.io)
    + [ ] Atom

#### Five Elements
- app-aware-display
    + [x] mdlDisplay
    + [x] mdlMain
    + [x] mdlShell
    + [ ] milkification
    + [ ] watchdog
- signin / free-sms
    + Captcha Resolver
        * [x] Pillow
        * [ ] OpenCV
    + Refresher
        * [x] urllib.Request
        * [x] freehostingnoads
        * [ ] javascript crypto
    + [ ] click CloudAppLink
- [ ] sndvol32

#### Project Silverbridge
- **n2n**
    + [ ] supernode
- [x] physics-experiment
    + [x] smtplib
    + [ ] eBesucher
+ Web frameworks
    * [ ] **pastebin**
        - [ ] poplib / imaplib
    + psr-portal
        * [x] Flask
        * [x] ARP
        * [x] SQLite3
        * JavaScript
            - [ ] Qunee
            - [ ] **jQuery**
                + [ ] ajax
    + magic -> hooks
        * [x] prepare-commit-msg
        * [ ] github webhook
    + [ ] **Rails**
    + [x] Jekyll
        * [ ] **Ruby**
            - [ ] ruby-koans
            - [ ] prog-ruby
            - [ ] Rails
        * [ ] WinterSmith
    + [ ] safety-refactored
- ipyconfig
    + [ ] auto_routing
    + [x] dynamic dns & dmz
        * [x] router-reset
        * [ ] router-test
    + [x] timestamp
- kirakira
    + [ ] master
    + [ ] servant

Github
------
- [ ] **Rename**
- [ ] **Refresher/Refnew**
- [ ] **Supplicant**
- [ ] Indextan
- [ ] Safety
- [ ] Countdown
- [ ] **python-invaders**
- [ ] **eventlog**
- [ ] IDMonitor

Tips
----
#### 克服拖延症、达成目标
什么是执行意图？就是使用if...then...的思考范式。比如， 不要再说，我要学Ruby。 而是说，如果我要学习Ruby，那么，今天晚上就装上环境。

#### 调整你的目录结构：搜索而非查找
知识性工作，打交道最多的是电脑。通过对目录结构的调整以及分析，将最需要创造力与专注力的工作，放在目录结果的常用位置，将大幅度提高自己对创造力任务的关注。作者之前的目录结构是：公司管理，然后按部门细分，部门之下又按照项目或者客户名称细分。然后个人文档又分成另一种目录结构。
--结果文件夹层级非常深，同时较不体现任务的优先级。--参考积极心理学的有关原理，调整之后的目录结构改为：

> 1+个人效率 2+创造乐趣 3+管理艺术 4+公益传承 5+历史记忆 6+资料库 999+大箩筐

在调整之后的目录结构之下，尽可能打破部门与项目的局限，而是采取一种较扁平的目录结构（使用google桌面检索工具），最终强迫自己将注意力集中在创造性任务之上。
同时与传统的目录结构最大的区别，在于，多了一些积极情绪暗示词汇。
比如以前的《欧阳的个人文档》更新为：《个人效率》，《欧阳的公司文档》更新为：《管理艺术》。
传统的分散在不同目录结构下的创造性任务，则单独用一个《创造乐趣》的文档来归类。

#### 专注于任务而非工具：使用web软件而非本地软件
word的设计实质上是不符合心流或者心理学原则的。从心理学上而言，它存在两个致命缺陷：
    1. 它分散了人们的注意力，提供了太多功能，让人们将注意力集中在格式化、排版而非创作之上；2）
    2. 不存在版本自动跟踪功能：呈现在你面前的总是完美的稿件，如果是乱七八糟的稿件，在word里面会非常难看，最终让你难以下笔，一些写作的零散想法，也不好意思写在word里面。

#### 准备大箩筐：归档零散思想或者生活目标
对于热爱生活的MM来说，会给自己的家里准备多个色彩鲜艳的纸盒或者箱子，拿来收罗杂物。同样，对于自己的零碎思想，也可以准备一个大脑的大箩筐，将零散想法、创意、灵感，以手写、手机写、在线写等多种方式，写入evernote之中，并将其同步到evernote的网站，随时随地查看。当然，你也可以使用其他的类似软件。

还记得你年少时的梦想？因为生活的压力，是不是慢慢地忘记了那些梦想。然而，这些世界上，同样存在一批理想现实主义者，坚持一定要改变世界而不是被世界改变自己的理念。这样的人，有苹果公司的乔布斯；有Patagonia公司的Yvon Chouinard。如果希望记录自己的零散的梦想或者提醒自己，可以使用时间管理软件，来对生活归档。比如：rememberthemilk
