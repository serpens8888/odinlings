package odinlings

import "core:fmt"
import "vendor:raylib"

/*
 * Loops
 *
 * a loop is a block of code that will be executed repeatedly
 * every time the loop repeats or 'iterates' it will check a 
 * boolean and if it is true the loop continues
 *
 * loops are declared with 'for condition { ... }'
 * there are many ways to do loops
*/

main :: proc(){
    
    for(false){
        //never runs
    }


    nums: [10]uint = {1, 2, 3, 4, 5, 6, 7, 8, 9, 11}

    //these are zero initialized by default
    sum: int
    
    i: int
    
    //if i is less than 10 the loop will continue
    for i < 10 {
        fmt.println("added", nums[i], "to sum")
        sum += i
        
        //at the end we increment i
        i += 1
    }

    fmt.println("sum =", sum)

    //we can also pack the declaration, condition, and increment between for and {
    for j := 10; j>-5; j-=3 {
        fmt.println(j)
    }

    
    //hint: use crtl + c to force quit a program in the terminal
    for k := 0; k<10; k-=1 {
        fmt.println("why wont the program end!!!")
    }


}
