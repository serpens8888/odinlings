package odinlings

import "core:fmt"

/*
 * variadic arguments
 *
 * variadics are functions that take a variable amount 
 * of arguments, they are declared with ..type
 * variadics are extra syntax for passing a slice as an argument
 * in a more ergonomic way. 
*/

sum_variadic :: proc(nums: ..int) -> int {
    sum: int
    for num in nums {
        sum += num
    }

    return sum
}

sum_slice :: proc(nums: []int) -> int {
    sum: int
    for num in nums {
        sum += num
    }

    return sum
}



main :: proc() {
    sum_variadic(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    nums: []int = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    sum_slice(nums)

    //since variadics are syntax over slices we can pass a
    //slice to a variadic with the '..slice' syntax
    sum_variadic(..nums)

    //a good example of a variadic function is printf - [print] [f]ormatted
    //printf takes a string, and a variadic amount of arguments of any type
    //the 'any' type is generally only for formatting and printing


    //'\n' is an escape sequence, which is a command to the terminal
    //'\n' tell the terminal to go to a new line

    fmt.printf(
        "%s\n",
        "'%s' is the format 'verb' for string, the '%s' will be replaced with this string",
    )

    fmt.printf("%s%s\n", "Hello,", " World!")


    //%d is for integers in base 10
    fmt.printf("%d\n", 100)


    //%b is for integers in binary
    fmt.printf("%b\n%b", 10, 100)

    //a full list can be found at: https://pkg.odin-lang.org/core/fmt/


}

