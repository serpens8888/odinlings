package odinlings


import "core:fmt"


/*
* named returns
*
* return values can be named and initialized in the function declaration
* the syntax is the same as multiple return values except instead of
* '-> (type, type, type)' it is '-> (name: type, name: type, name: type)'
* these return values are 0 initialized like everything in odin
*/

//if they are all the same type 'name, name, name: type' is short for 'name: type, name: type, name: type'
calculate_stats :: proc(nums: []int) -> (min, max, avg: int) {

    if (len(nums) == 0) {
        //since the return values were named, we dont need to list them out for the return statement
        return
    }

    //this is the same as min = nums[0]; max = nums[0]
    min, max = nums[0], nums[0]
    sum: int = 0

    for num in nums {
        sum += num

        //when an if statement is only one line we can say 'if <cond> do <something>'
        if num > max do max = num
        if num < min do min = num
    }

    avg := sum / len(nums)

    //when the return values are named we do not need to list them all here
    return
}



main :: proc() {

    min, max, avg := calculate_stats(
        {534, 543, 534, 53, 45, 34534, 53, 4534, 23},
    )

    fmt.println("min:", min, "max:", max, "avg:", avg)

}

