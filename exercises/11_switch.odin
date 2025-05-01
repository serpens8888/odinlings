package odinlings

import "core:fmt"

/*
 * switch case
 *
 * switch case is a way to go through a lot of different conditions
 * without having to write a long if -> else if -> else if -> ...
 * chain.
 *
 * the syntax is: switch(x){ case <condition or value>: {code for case} }
*/


main :: proc() {



    color := "red"

    switch color {
    case "blue":
        fmt.println("color is blue!")
    case "red":
        fmt.println("color is blue!") //huh
    case "green":
        fmt.println("color is green!")
    //default option
    case:
        fmt.println("unrecognized color...")
    }

    switch color {
    //we can also use a list of cases
    case "red", "green", "blue":
        fmt.println(color, "is a primary color for light")
    case:
        fmt.println(color, "is not a primary color for light")
    }



    //here is the example from the last exercise written with a switch statement
    num := 11

    //when the cases are conditions we cannot use values directly
    switch {
    case num > 10:
        fmt.println(num, "is greater than 10")
    case num < 10:
        fmt.println(num, "is less than 10")
    case:
        fmt.println(num, "is ten")
    }



}

