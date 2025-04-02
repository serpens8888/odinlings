package odinlings

import "core:fmt"

Point :: struct{
    x: int,
    y: int,
}


main :: proc(){
    a: Point = {0, 0}

    b: Point = {
        x = 0,
        y = 10
    }

    c: Point
    c.x = 10
    c.y = 10

    d: Point = { x = 10}
    d.y = 0


    side_len := a.y + b.y // '.' operator to access
    area := side_len * side_len

    fmt.println("the area is:", area, "!!!!!!!!!")


    
}











