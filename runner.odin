package runner

import "core:os"
import "core:fmt"
import "core:log"
import "core:strconv"
import "core:reflect"
import intrin "base:intrinsics"
import "core:strings"
import "core:c/libc"

filename :: "current_exercise.txt"

main :: proc(){

    context.logger = log.create_console_logger()
    defer log.destroy_file_logger(context.logger)

    if(len(os.args) == 1){
        fmt.println("this is the odinlings exercise runner!\n")
        fmt.println("use 'run' to run the current exercise")
        fmt.println("use 'curr' to see the currently selected exercise")
        fmt.println("use 'next' to go to the next exercise")
        fmt.println("use 'prev' to go to the previous exercise")
        fmt.println("use 'goto' to go to a specific exercise by number")
        return
    }

    dir, open_err := os.open("exercises")
    defer os.close(dir)
    if(open_err != nil){
        log.fatalf("failed to open exercises directory - %s", reflect.enum_string(open_err))
        return
    }

    infos, read_err := os.read_dir(dir, 1024)
    defer delete(infos)
    if(read_err != nil){
        log.fatalf("failed to read exercises directory - %s", reflect.enum_string(read_err))
        return
    }

    current_exercise_file: []u8
    current_exercise_file, read_err = os.read_entire_file_from_filename_or_err(filename)
    current_exercise := strconv.atoi(transmute(string)current_exercise_file)
    
    switch os.args[1]{
        case "run" : run_exer(infos, current_exercise)
        case "curr": print_curr(infos, current_exercise)
        case "next": next_exer(infos, current_exercise)
        case "prev": prev_exer(infos, current_exercise)
        case "goto": goto_exer(infos)
    }

    return
}

run_exer :: proc(infos: []os.File_Info, curr: int){
    to_run := infos[curr]
    fmt.printf("running %s\n", to_run.fullpath)

    cmd: strings.Builder
    defer strings.builder_destroy(&cmd)
    cmd_str := fmt.sbprintf(&cmd, "odin run %s -file -out:odin-out/%s.exe", to_run.fullpath, to_run.name)
    
    libc.system(strings.to_cstring(&cmd))

}

print_curr :: proc(infos: []os.File_Info, curr: int){
    fmt.printf("current exersice is exercise %d out of %d\n", curr+1, len(infos))
    fmt.printf("current exercise is located ad '%s'\n", infos[curr].fullpath)
}

next_exer :: proc(infos: []os.File_Info, curr: int){



    buf := make([]u8, size_of(int))
    err := os.write_entire_file_or_err(filename, transmute([]u8)strconv.itoa(buf, curr+1))
    if(err != nil){
        log.fatalf("failed to increment tracked exercise - %s", reflect.enum_string(err))
    }

    return
}
prev_exer :: proc(infos: []os.File_Info, curr: int){



    buf := make([]u8, size_of(int))
    err := os.write_entire_file_or_err(filename, transmute([]u8)strconv.itoa(buf, curr-1))
    if(err != nil){
        log.fatalf("failed to increment tracked exercise - %s", reflect.enum_string(err))
    }

    return
}
goto_exer :: proc(infos: []os.File_Info){

    if(len(os.args) < 3){
        log.error("goto requires a number to go to\n ex: ./odinlings goto 0")
        return
    }
    
    num := strconv.atoi(os.args[2])
    
    if(num < 1 || num > len(infos)){
        log.errorf("%d is out of range", num)
        return
    }


    buf := make([]u8, size_of(int))
    err := os.write_entire_file_or_err(filename, transmute([]u8)strconv.itoa(buf, num-1))
    if(err != nil){
        log.fatalf("failed to increment tracked exercise - %s", reflect.enum_string(err))
    }

    return
}
















