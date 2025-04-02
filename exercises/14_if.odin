package odinlings

import "core:fmt"

/*
 * if
 *
 * the 'if' statement is a basic form of control flow in a program
 * control flow is the order in which things happen in a program.
 *
 * the if statement uses a bool and if that boolean is true
 * the code inside the if statements curly braces '{' ... '}'
 * will be executed by the computer
*/


main :: proc(){
    
    //parantheses are optional here
    if true {
        fmt.println("this always prints!")
    }

    if !true {
        fmt.println("this never prints!")
    }

    if 10>1 {
        fmt.println("10 is greater than 1")
    }

    if(1>10){
        fmt.println("1 is greater than 10?")
    }

    if(1 != 1){
        fmt.println("1 does not equal one? thats not true...") 
    }

    //don't change the code above this line

    
    x: bool = 2 != 3
    if x {
        x = 2 == 3
    }

    if x {
        fmt.println("pls help me print ;-;")
    }


}






