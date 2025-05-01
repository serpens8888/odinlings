package odinlings


import "core:fmt"


/*
 * procedures
 *
 * procedures are reusable blocks of code that
 * can be invoked by calling their names
*/


//this create a procedure named "hello_world", it will print hello world
hello_world :: proc() {
    fmt.println("hello, world!")
}

/*
 * this creates a procedure called "add"
 * it takes in 2 integers as input: (x and y) and prints their sum
 * the inputs are declared inside the parenthesis and are called
 * 'parameters' or 'arguments' 
 *
 * parameters in odin cannot be changed inside the procedure
 *
 * since a function does not have access to the scope of the one
 * calling it, parameters are the only way to pass values into
 * the function from the caller's scope, but procedures can access
 * things from the file scope
*/


add_print :: proc(x: int, y: int) {
    fmt.println(x - y)
}

/*
 * this function takes a pointer to an int
 * parameters are immutable but the pointer is
 * not being changed, the value it points to is
 * this is called passing a parameter by reference
 * as opposed to passing it by value
*/

ONE :: 1

add_one :: proc(num: ^int) {
    num^ += ONE //ONE can be accessed because it is in a higher scope
}


main :: proc() {


    //this calls the procedure, the parenthesis show that it is a procedure
    hello_world()


    add_print(10, 200)

    number: int = 10
    add_one(number)

    fmt.println(number)

}

