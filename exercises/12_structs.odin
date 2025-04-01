package odinlings

import "core:fmt"

/*
 * wait... a slice is a pointer AND an int?
 * how can a type be made up of multiple other types?
 *
 * Structs
 * a struct is a compound type made up of other types
 * we declare a struct with name :: struct{...}
*/

//a point in 2d space
Point :: struct{
    x: int, /* this is a struct field, it has a name and a type
             * struct fields are seperated by a ','
             * odin does not have default values
             * the types will be set to their zero value (int -> 0, string -> "", bool -> false, ^int -> nil)
            */
    y: int,
}


main :: proc(){
    //we can initialize a struct ananymously like this, where the fields are not named
    a: Point = {0, 0}

    //like this where the fields are named
    b: Point = {
        x = 0,
        y = 10 //the ',' is optional on the last one
    }

    //or individually after of the declaration
    c: Point //right now they are both set to 0

    //struct fields can be access using the '.' operator
    c.x = 10
    c.y = 10

    //we can also use a mix of these methods
    d: Point = { x = 10}
    d.y = 0


    /*
     * looking at those four points a,b,c and d... they make a square don't they?
     *
     *    b(0, 10)    c(10,10)
     *     .__________.
     *     |          |
     *     |          |
     *     |          |
     *     |          |
     *     |          |
     *     .__________.
     *    a(0,0)       d(10,0)
     *
    */


    //I've tried to find the area of this square by squaring the side length
    //but it looks like I made a mistake, can you step in to fix it?

    side_len := a.y + b[y]
    area := side_len * side_len

    fmt.println("the area is:", area, "!!!!!!!!!")


    
}











