//this is a comment, it is not a part of the code


/*
   comments are there to add extra details and annotations to code
   '//' is for single line comments, '/*' '*/' is for multiple lines
*/




//a package is a folder of .odin files
//each file in the package requires the same tag at the top
package odinlings




//import is used to bring in packages
//this brings in fmt (format) from the core library
import "core:fmt"






//this is the main procedure, or the entrypoint, it is where your code begins
//generally packages will have one or zero entrypoints
main :: proc(){


    //fmt.println() is used to print a line of text
    fmt.println(`        __  ___        _____       _____                             _____                     __ ____        ____       `)
    fmt.println(`      /  //     \     |    //\       |        |        |    |          |       |        |     / //    \      /    \      `)
    fmt.println(`     /  //       \    |   //  \      |        \\       |    |          |       \\       |    | //            |           `)
    fmt.println(`    |  //         |   |  //    |     |        | \\     |    |          |       | \\     |    |//     ___      \ _        `)
    fmt.println(`    | //          |   | //     |     |        |   \\   |    |          |       |   \\   |    //        |          \      `)
    fmt.println(`     //          /    |//     /      |        |     \\ |    |          |       |     \\ |    |         /          |      `)
    fmt.println(`      \ _______ /     //_____/     __|__      |       \\    |____    __|__     |       \|     \_______/      \____/      `)
    fmt.println(`                                                                                                                         `)


    //add another one down here to try it out!
    //you can use "" for lines, '' for single characters, and `` for multi line phrases

    fmt.println("hellope!")




}

