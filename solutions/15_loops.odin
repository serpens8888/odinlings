package odinlings

import "core:fmt"
import "vendor:raylib"

main :: proc(){
    
    for(false){
        //never runs
    }


    nums: [10]uint = {1, 2, 3, 4, 5, 6, 7, 8, 9, 11}

    sum: int
    
    i: int
    
    for i < 10 {
        fmt.println("added", nums[i], "to sum")
        sum += i
        
        i += 1
    }

    fmt.println("sum =", sum)

    for j := 10; j>-5; j-=3 {
        fmt.println(j)
    }

    for k := 0; k<10; k+=1 {
        fmt.println("why wont the program end!!!")
    }


}
