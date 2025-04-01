package odinlings

import "core:fmt"

main :: proc(){
    arr: [5]f32 = {1.1, 2.2, 3.3, 4.4, 5.5}

    index: int = 0
    element_one := arr[index]
    fmt.println(element_one)
    arr[1] = 15
    fmt.println(arr)


    array : [2]int = {8, 7}
    array2: [2]int = {2, 3}
    
    result := array*array2

    //its in index 1, aka element 2
    assert(result[0] == 16)
    assert(result[1] == 21)



}













