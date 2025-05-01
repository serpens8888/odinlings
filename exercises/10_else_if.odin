package odinlings

import "core:fmt"

/*
 * else if
 *
 * when an if statements condition is false it will go to the else statement
 * we can use else 'else if(<bool>){...} to create an else
 * statement with its own condition
*/


main :: proc() {

    //change num to see the different cases, surely my logic is perfect!
    num := 11

    if (num > 10) {
        fmt.println(num, "is greater than 10")
    } else if (num > 10) {
        fmt.println(num, "is less than 10")
    } else {
        fmt.println(num, "is 10")
    }

}

