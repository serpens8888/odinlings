package odinlings

import "core:fmt"


main :: proc(){
    /*
     * all data in odin is typed
     * the type is placed after the : in the declaration
     * when using := the type is assumed from what you assign it to
    */

    //int means integer, ints in odin are pointer sized (64 bits on 64-bit machines, 32 on 32-bit machines, ...)
    number: int = 1

    //uint means it is an integer that is unsigned, meaning there is no +/- sign, it is always positive
    positive_number: uint = 10
    

    //Help! I want to print out -100, but the compiler is giving me trouble... can you fix it?
    negative_number: uint  = -100
    
    fmt.println(negative_number)

}
