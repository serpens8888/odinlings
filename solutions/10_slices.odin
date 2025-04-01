package odinlings

import "core:fmt"

main :: proc(){

    slice: []int = {1, 2, 3}

    fmt.println(len(slice))
    fmt.println(raw_data(slice))

    fmt.println(slice[0], slice[1], slice[2])
    fmt.println(slice)

    array: [8]bool = {true, false, true, false, false, true, true, false}
    sliced_arr := array[5:] //this goes from index 5 to the end, taking the values at indices 5, 6, and 7
    //sliced_arr[0] = false


    assert(array[5])


    fmt.println("print me!")



}





