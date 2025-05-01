package odinlings


import "core:fmt"

/*
 * enums
 *
 * enums, or enumerations are lists of names that can represent
 * different values, options, or states, they help avoid magic numbers
 * in code. 
 *
 * enums are declared with 'name :: enum{ ... }'
 *
 * For example, if(player_state == 3){} is much, much worse than
 * if(player_state == .Running){}
 * where running is an option in an enum
*/


//this is an enum that has some food options
Cat_Food :: enum {
    Tuna,
    Salmon,
    Chicken,
    Turkey,
    Beef,
    Lamb,
}

Cat_State :: enum {
    Sleeping,
    Eating,
    Scratching,
    Biting,
    Walking,
    Running,
    Meowing,
    In_Litterbox,
}

Cat :: struct {
    age:           int,
    name:          string,
    favorite_food: Cat_Food,
    state:         Cat_State,
}

main :: proc() {

    whiskers: Cat = {
        age           = 12,
        name          = "Whiskers Sr.",
        favorite_food = .Tuna,
        //cat.state is not set, and will default to the first item: Sleeping
    }


    //we can switch on the enum value
    switch (whiskers.favorite_food) {
    case .Tuna:
        fmt.println("Whiskers' favorite food is tuna!")
    case .Salmon:
        fmt.println("Whiskers' favorite food is salmon!")
    case .Chicken:
        fmt.println("Whiskers' favorite food is chicken!")
    case .Turkey:
        fmt.println("Whiskers' favorite food is turkey!")
    case .Beef:
        fmt.println("Whiskers' favorite food is beef!")
    case .Lamb:
        fmt.println("Whiskers' favorite food is lamb!")
    }

    /*
     * when switching on an enum you have to either implement each 
     * option the enum can be, or use '#partial switch' to say it is
     * incomplete on purpose
     *
     * do not use #partial switch in this exercise
    */

    switch (whiskers.state) {
    //my cat ate my keyboard... can you write the rest of this code for me?
    case .Meowing:
        fmt.println("Meow!")

    }


}

