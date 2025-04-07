package odinlings


//the thief of joy

/*
 * odin also comes with some comparison operators
 * '==' is equal
 * '!=' is not equal
 * '>' is greater than
 * '>=' is greater than or equal to
 * '<' is less than
 * '<=' is less than or equal to
 * '&&' is logical and
 * '||' is logical or
 * '!' is the not operator
 * comparisons will return a boolean type, which can either be true or false
 * odin comes with bool, b8, b16, b32, and b64
 * specified length bools are for interop with C, which didnt have a bool type for a while
 * bools are 0 when false, and true with any other value
*/

main :: proc(){
    //assert takes in a comparison, and crashes the program if it is false
    //#assert does the same but only works on constants and raises a compile error
    //true and false are keywords that represent true and false states of booleans
    

    //im stuck... can you help me fix these assertions?
    assert(true) 
    assert(false)
    #assert(!false)
    #assert(5 == 5)
    #assert(2 != 1.5)
    #assert(100 > 1)
    #assert(10 >= 10)
    #assert(100 > 10)
    assert(10 <= 15)
    assert((true && false) == false)
    assert(false || true)
}
