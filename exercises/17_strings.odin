package odinlings

import "core:fmt"


/*
 * Strings
 *
 * strings in odin are basically slices of bytes
 * strings are utf-8 encoded, a unicode character in odin
 * is called a rune and it is an i32 underneath
*/

main :: proc() {

    letters: string = "abcdefghijklmnopqrstuvwxyz"

    //strings are slices of bytes so we can take their length and get the raw_data
    fmt.println(len(letters))

    a := letters[0]
    fmt.println("this is the encoding for 'a':", a)
    //to see the encodings for all the utf-8 characters, search up 'utf-8 table'

    //strings can also be iterated through using <value>, <index> in <string>
    for letter, index in letters {
        if (letter > 'm') {
            fmt.println(letter, index)
        }
        assert(type_of(letter) == rune)
    }


    //when you only want one character use '' to specify it

    capital_a: u8 = 'A'


    //say hello to the world of strings!

    hello_world := 'Hello, World!'

    fmt.println(hello_world)


}

