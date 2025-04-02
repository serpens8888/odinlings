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
    

    ten := 5+5
    fmt.println(ten)

    twenty := (30-20) * 2
    fmt.println(twenty)

    num := ten+twenty

    /* 
     * this sets num to num + 20
     * if we just put 'num + 20' is does not 
     * set num to be the result of 'num + 20'
    */

    num = num + 20

    //we can abrreviate this to
    num += 20

    fmt.println(num)

    //lets use these operators to find the area of a circle
    // area = pi * radius^2

    r: int = 15

    pi: f64: 3.14159265358979

    a := pi * (r * r)

    fmt.println(a)

}
