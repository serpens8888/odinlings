package odinlings

import "core:fmt"


/*
 * Strings
 *
 * strings in Odin are slices of bytes
 * an ascii character is one u8/byte, but unicode characters will be larger
 * strings in odin are utf-8 encoded
*/

main :: proc(){

    letters: string = "abcdefghijklmnopqrstuvwxyz"
    //strings are slices of bytes so we can take their length and 

    a := letters[0]
    fmt.println("this is the encoding for 'a':", a)

    //when you only want one character use '' to specify it

    capital_a: u8 = 'A'


    //say hello to the world of strings!

    hello_world := 'Hello, World!'

    fmt.println(hello_world)


}
