package odinlings

import "core:fmt"


main :: proc(){
    
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
        //you could change this
        x = 2 == 3
    }

    //here I changed false to not false, you could just delete the if
    if !x {
        fmt.println("pls help me print ;-;")
    }


}






