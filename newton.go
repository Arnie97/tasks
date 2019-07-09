package main

import (
	"fmt"
	"math"
)

const epsilon = .00000000000001

func Sqrt(x float64) (z float64) {
	z = x
	for diff := epsilon; diff >= epsilon; diff = z * z - x {
		z -= diff / (2 * z)
	}
	return
}

func main() {
	fmt.Println("> Sqrt test, input 0 to exit")
	for f := 2.; f != 0.; fmt.Scanf("%f", &f) {
		fmt.Println(Sqrt(f))
		fmt.Println(math.Sqrt(f))
		fmt.Print("\n> ")
	}
}
