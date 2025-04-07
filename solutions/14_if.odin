#+vet

package odinlings

import "core:fmt"


main :: proc(){
    
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


    
    x: bool = 2 != 3
    if x {
        x = 2 == 3
    }

    if !x {
        fmt.println("pls help me print ;-;")
    }


}






