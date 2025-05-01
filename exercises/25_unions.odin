package odinlings


import "core:fmt"


/*
 * unions
 *
 * union types are similar to enums,
 * but instead of having different cases
 * they have different types
 *
 * a union can hold a value of any type within
 * the union, and we can only access the value after
 * unwrapping the union to find the type of its data
*/


Value :: union {
    int,
    string,
    bool,
}


main :: proc() {


    list: []Value = {123, "abc", true, false, "a", 23, false}


    for value in list {
        switch type in value {
        case int:
            fmt.println("i")
        case string:
            fmt.println("s")
        case bool:
            fmt.println("b")
        }
    }


    /*
     * instead of switching on the type to find which variant
     * a union is, we can assert that the union is a variant
     *
     * the syntax is: <union>.(<variant type>) and it returns (data, ok)
     * the ok bool can be ignored, but if you ignore it and the assertion is
     * false the program will crash because an assertion failed
    */




    a: int = list[0].(int)
    b := list[1].(int)


    //the type assertion returns a value and bolean, so we can use this trick and declare it in the if statement
    //this also works in switch statements
    if c, is_bool := list[2].(bool); is_bool {
        fmt.println(c)
    }




}

