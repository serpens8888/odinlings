#+vet

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
 *
 *
 * else
 * else is used after an if block to do something if the condition
 * is not true
*/


main :: proc(){
    
    //parantheses are optional here
    if true {
        fmt.println("this always prints!")
    }

    if !true {
        fmt.println("this never prints!")
    } else{
        fmt.println("but this always prints")
    }

    if 10>1 {
        fmt.println("10 is greater than 1")
    }

    if(1>10){
        fmt.println("1 is greater than 10?")
    }

    if(1 != 1){
        fmt.println("1 does not equal one? thats not true...") 
    } else {
        fmt.println("I knew it, 1 == 1")
    }

    //don't change above this line

    
    x: bool = 2 != 3
    if x {
        x = 2 == 3
    }

    if x {
        fmt.println("pls help me print ;-;")
    }


}






