package odinlings

import "core:fmt"


main :: proc(){

    x := false
    if(x){
        //something has gone horribly wrong if this happens
        panic("space rays flipped a bit or something") //'panic' crashes the program
    } else{
        fmt.println("this will always print")
    }

    num := 123
    is_num_even := ???

    if(is_even){
        fmt.println(num, "is even")
    } else{
        fmt.println(num, "is odd")
    }



}












