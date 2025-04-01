package odinlings

import "core:fmt"


main :: proc(){
    
    //create a num for ptr to point to, so its not just pointing to nothing
    num: uint = 1423523
    ptr: ^uint = &num
    data := ptr^
    fmt.println(data)
}













