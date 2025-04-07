package odinlings

import "core:fmt"


/*
 * Scope
 *
 * a scope is a region of a program
 * this comment is in the 'file scope' since it
 * is at the top of the file and not inside of
 * anything else
*/

x := 123

main :: proc(){

    /*
     * this scope is inside the main procedure
     * things inside of higher scopes are accessible
     * inside of lower scopes, but things in lower scopes
     * do not exist in higher scopes
    */

    y := 10

    //this is a new scope
    {
        z := 14*y
    }

    w := x*10*z

    fmt.println(w)

}


