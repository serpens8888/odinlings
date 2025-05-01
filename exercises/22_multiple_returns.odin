package odinlings


import "core:fmt"


/*
* multiple return values
*
* procedures can return more than one value
* which is very useful for sending out error values
* from a function when there are multiple returns
* the list of return types must be surrounded by parentheses
*/




Div_Error :: enum {
    DIV_BY_ZERO,
}


divide :: proc(n, d: f32) -> (f32, Div_Error) {
    //n is the numerator, d is the denominator
    //when the denominator is 0 it is a division by 0

    if (n == 0) {
        return 0, .DIV_BY_ZERO
    }


    //nil means there is no value
    return n / d, nil
}


main :: proc() {

    // 0/2
    result, err := divide(0, 2)


    fmt.println(result, err)


}

