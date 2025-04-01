package odinlings

/*
 * floating point numbers are used to represent numbers with decimals
 * in odin floats come in 16, 32, and 64 bits.
 * floats are not precise since they have a limited amount of bits to represent this data
 * the more bits a float has the larger the range and the more precise it is.
*/


main :: proc(){
    
    float: f32 = 0.123
    
    //no precision is lost here, so this works
    one: int = 1.0

    two: f16 = 10



    pi: u64 = 3.14159265358979
     
}
