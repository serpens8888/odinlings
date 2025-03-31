package odinlings

import "core:fmt"

//from this point on each exercise will contain a logical or compile error

main :: proc(){

    /*
     * variables are created with :=
     * the ':' declares it's existence, and the '=' assigns it a value
     * if :: is used it will create a constant
    */
    
    fifteen :: 15

    number := fifteen

    fmt.println(number)

}
