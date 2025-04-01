package odinlings

import "core:fmt"

/*
 * arrays are lists of items, an item in an array is called an array element
 * arrays are fixed length, and each element is of the same type
 * arrays are types in odin, not pointers like arrays in C
*/

main :: proc(){
    arr: [5]f32 = {1.1, 2.2, 3.3, 4.4, 5.5}

    //when we access an element in an array, we use an index
    index: int = 0
    element_one := arr[index]
    fmt.println(element_one)
    arr[1] = 15
    fmt.println(arr)

    /*
     * why does index zero get us element one? older programming languages used it, and now its common convention
     * some languages like lua use 1 based indexing, but most languages use 0 based indexing
     * it can be a little confusing at the start and cause off by one errors from time to time, but you'll get it
    */


    //in odin, array math is built in to the language
    array : [2]int = {8, 7}
    array2: [2]int = {2, 3}
    
    result := array*array2

    assert(result[0] == 16)
    assert(result[1] == 21)



}













