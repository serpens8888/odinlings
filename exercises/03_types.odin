package odinlings

import "core:fmt"


/* Types
 *
 * all data in odin is typed
 * the type is placed after the ':' in the declaration
 * when using := the type is assumed from what you assign it to
 *
 * to turn one type into another use the cast operation
 * cast(f32)i32 will turn an i32 into an f32 - where i32 and f32 are values of these types
 * the cast operator doesnt need to be directly called, f32(i32) or (f32)(i32) will also work
*/

main :: proc() {

    //int means integer, ints in odin are pointer sized (64 bits on 64-bit machines, 32 on 32-bit machines, ...)
    number: int = 1

    //uint means it is an integer that is unsigned, meaning there is no +/- sign, it is always positive
    positive_number: uint = 10


    //Help! I want to print out -100, but the compiler is giving me trouble... can you fix it?
    negative_number: uint = -100

    fmt.println(negative_number)

}

