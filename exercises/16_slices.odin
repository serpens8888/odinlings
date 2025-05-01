package odinlings

import "core:fmt"

/*
 * Slices
 *
 * a slice is a pointer and a length
 * the length can be retrieved with len(slice)
 * the pointer can be retrieved with raw_data(slice)
 * 
 * a slice is a type, declared with []element_type
*/

main :: proc() {

    slice: []int = {1, 2, 3}

    fmt.println(len(slice)) //the length of the slice, len can be used for all array types
    fmt.println(raw_data(slice)) //a pointer to the first element of the slice

    //slices can be indexed like arrays
    fmt.println(slice[0], slice[1], slice[2])
    fmt.println(slice)

    /*
     * we can slice an array with [start:end], [start:], [:end], [:]
     * if the left side is blank ([:end]) it goes from the beginning to out endpoint
     * if the right side is blank ([start:] it goes from out starting point to the end
     * if both sides are blank it slices the entire thing
     * 
     * if you slice something and change the slice, the underlying data changes as well
     * because slices are pointing back to the original data, and when you change
     * the data that a pointer points to it changes in its original location
    */

    //                  0     1      2     3      4     5     6      7
    array: [8]bool = {true, false, true, false, false, true, true, false}


    //this goes from index 5 to the end, taking the values at indices 5, 6, and 7
    sliced_arr := array[5:]
    sliced_arr[0] = false


    assert(array[5])


    fmt.println("print me!")



}

