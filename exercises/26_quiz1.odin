package odinlings

import "core:fmt"

//quiz one -  find the bug


Monster :: struct {
    name:   string,
    health: int,
    damage: int,
}

//the monsters are passed by reference
//so they are taking real damage that will affect their next battle
battle :: proc(a, b: ^Monster) -> (winner: ^Monster) {


    if a.damage <= 0 && b.damage <= 0 {
        fmt.println("neither monster can attack")
        return nil
    }

    //return the other if a monster is already dead
    if a.health <= 0 do return b
    if b.health <= 0 do return a

    //infinite loop - it will return when one monster dies
    for {

        //a attacks first
        b.health -= a.damage

        if b.health <= 0 {
            fmt.printf("%s won the battle!\n", a.name)
            return a
        }

        //b attacks after
        a.damage -= b.health

        if a.health <= 0 {
            fmt.printf("%s won the battle!\n", b.name)
            return b
        }

    }
}

hydra: Monster = {
    name   = "Heads",
    health = 2000,
    damage = 50,
}

dragon: Monster = {
    name   = "Scales",
    health = 1500,
    damage = 425,
}

basalisk: Monster = {
    name   = "Tails",
    health = 1000,
    damage = 150,
}

giant_worm: Monster = {
    name   = "Wiggles",
    health = 20000,
    damage = 10,
}

titan: Monster = {
    name   = "Bartholomew Barlow the Boisterous",
    health = 523,
    damage = 155,
}


main :: proc() {

    //HINT: print out the states of the monsters before and after battles to see what happened

    fmt.println(titan, dragon)
    winner := battle(&titan, &dragon)
    fmt.println(winner)

    //lets make sure the battle happened and the result is not nil
    if winner == nil do return

    winner2 := battle(winner, &giant_worm) //explicitly ignoring this return value

}

