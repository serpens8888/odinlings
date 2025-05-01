package odinlings

import "core:fmt"



/*
 * range based loops
 *
 * loops can also be declared with a range of numbers to iterate over
 * using 'for value, index in <range>' to iterate through the range
 * and get the value and index for each iteration.
 *
 * ranges are declared with start..<end for an exclusive range
 * or start..=end for an inclusive range
 * Example: 0..<10 is 0,1,2,3,4,5,6,7,8,9
 * and 0..=10 is 0,1,2,3,4,5,6,7,8,9,10
*/


main :: proc() {

    for num, i in 0 ..< 10 {
        fmt.println("value:", num, "-", "index:", i)
    }

    for char, i in 'A' ..= 'Z' {
        fmt.println("char:", char, "-", "index:", i)
    }

    //lets use this to sum all the numbers from 0 to 10000

    //including the index is optional
    sum: int
    for num in 0 ..< 10000 {
        sum += num
    }

    fmt.println("sum:", sum)

    //lets make sure it was summed correctly
    assert(sum == 50005000)



}

