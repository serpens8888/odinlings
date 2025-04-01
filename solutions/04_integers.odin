package odinlings

import "core:fmt"


main :: proc(){

    big_num: u128 = 274098123740912384721309847231935234213

    small_num: u8 = 12

    //give this int some more bits
    big_num2: u128 = 53425324532453253245324532453242342342




    //after fixing the error, the ranges of the integer types will print

    fmt.println("u8 max:", max(u8))
    fmt.println("u8 min:", min(u8))

    fmt.println("i8 max:", max(i8))
    fmt.println("i8 min:", min(i8))

    fmt.println("u16 max:", max(u16))
    fmt.println("u16 min:", min(u16))

    fmt.println("i16 max:", max(i16))
    fmt.println("i16 min:", min(i16))

    fmt.println("u32 max:", max(u32))
    fmt.println("u32 min:", min(u32))

    fmt.println("i32 max:", max(i32))
    fmt.println("i32 min:", min(i32)) 

    fmt.println("u64 max:", max(u64))
    fmt.println("u64 min:", min(u64))

    fmt.println("i64 max:", max(i64))
    fmt.println("i64 min:", min(i64))

    fmt.println("u128 max:", max(u128))
    fmt.println("u128 min:", min(u128))

    fmt.println("i128 max:", max(i128))
    fmt.println("i128 min:", min(i128))
}













