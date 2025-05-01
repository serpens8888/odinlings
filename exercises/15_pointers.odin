package odinlings

import "core:fmt"

/*
 * Pointers
 * 
 * a pointer is a variable that holds the memory address of another variable
 * a memory address is just a number that maps to a location in your computers RAM
 * pointer types can be declared by putting a '^' on the lefthand side of a type
 * Example: foo: ^int = address_of(some_int)
 *
 * in odin you can use the '&' operator to get the memory address of something
 * this is called a 'reference'
 * given a pointer, we can 'dereference' it by putting a '^'
 * on the righthand side of the variable
 *
 * this retrieves whatever is at the memory address the pointer is holding
 * Example: ptr: uint^
 *          data := ptr^
 * 
 * in this case ptr == nil because it is not pointing to anything
 * that means this is a nil pointer dereference, causing a segmentation fault
 * and crashing out program
 *
 * to fix this we should create a uint for foo to point to
 * then set foo to be the address of out uint
*/


main :: proc() {

    //help! my code keeps segfaulting...
    ptr: ^uint
    data := ptr^
    fmt.println(data)
}

