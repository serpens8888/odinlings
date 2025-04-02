package odinlings

import "core:fmt"

main :: proc(){
    
    ten := 5+5
    fmt.println(ten)

    twenty := 30-10
    fmt.println(twenty)

    num := ten+twenty

    num = num + 20
    num += 20

    //make this a float so our types work out nicely
    r: f64 = 15

    pi: f64: 3.14159265358979

    a := pi * r * r

    fmt.println(a)

}
