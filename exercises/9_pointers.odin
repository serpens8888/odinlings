package odinlings

import "core:fmt"

/*
 * Pointers
 * 
 * a pointer is a piece of memory that holds the address of another piece of memory
 * pointer types can be declared by putting a '^' before a type
 * Example: foo: ^uint
 *
 * in odin you can use the '&' operator to get the memory address of something
 * this is called a 'reference'
 * given a pointer, we can 'dereference' it by putting a ^ on the other side
 * this retrieves what the memory points to
 * Example: data := foo^
 * 
 * in this case foo == nil because it is not pointing to anything
 * that means this is a nil pointer dereference, causing a segmentation fault
 * and crashing out program
 *
 * to fix this we should create a uint for foo to point to
 * then set foo to be the address of out uint
*/


main :: proc(){
    
    //help! my code keeps segfaulting...
    ptr: ^uint
    data := ptr^
    fmt.println(data)
}













