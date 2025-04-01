package odinlings

import "core:fmt"

/*
 * odin comes with a set of built in arithmetic operators for numbers, a few are listed below
 * we have +, -, *, /, %, and %%
 * '+' is addition
 * '-' is subtraction
 * '*' is multiplication
 * '/' is division
 * '%' is modulo
 * '%%' is remainder
 *  modulo and remainder are only distinct for negative inputs
*/

main :: proc(){
    
    //lets use these operators to find the area of a circle
    // area = pi * radius^2

    ten := 5+5
    fmt.println(ten)

    twenty := 30-10
    fmt.println(twenty)

    five := 15/3
    fmt.println(5)


    r: f64 = 15

    pi: f64: 3.14159265358979

    a := pi * r * r

    fmt.println(a)

}
