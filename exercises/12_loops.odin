package odinlings

import "core:fmt"

/*
 * Loops
 *
 * a loop is a block of code that will be executed repeatedly
 * every time the loop repeats or 'iterates' it will check a 
 * boolean and if it is true the loop continues
 *
 * loops are declared with 'for condition { ... }'
 * there are many ways to do loops in odin
*/

main :: proc() {

    for (false) {
        //never runs
    }




    i: int = 0

    //if i is less than 10 the loop will continue
    for i < 10 {
        fmt.println(i)

        i += 1
    }


    //we can also pack the declaration, condition, and increment between 'for' and '{'
    for j := 10; j > -5; j -= 3 {
        fmt.println(j)
    }


    //hint: use 'crtl + c' to force quit a program in the terminal
    for k := 0; k < 10; k -= 1 {
        fmt.println("why wont the program end!!!")
    }

}

