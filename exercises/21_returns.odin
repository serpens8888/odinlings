package odinlings

import "core:fmt"

/*
 * return values
 *
 * return values are the outputs of a procedure
 * return values are declared with  '-> <type>'
 * after the closing parenthesis of the arguments 
 * then inside the function we have to use the 'return'
 * keyword to output something from the function
*/

//this create a procedure 'square' that takes an int and returns a int
square :: proc(x: int) -> int {
    //the 'return' keyword exits the function and returns whatever is in front of it
    return x * x
}

cube :: proc(x: int) -> int {
    result := x * x * x
}

//if you make a variable inside a functions scope and return a pointer to it
//this is called a 'dangling pointer' because the variable it points to 
//no longer exists once the function ends and the pointer is returned




main :: proc() {

    fmt.println(square(10))

    fmt.println(cube(10))

}

