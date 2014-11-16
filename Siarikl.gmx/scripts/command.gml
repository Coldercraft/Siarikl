cmdin = argument0 + " ";
count = 0;
output = "";

//Split command and arguments in array
do {
    cmd[count] = string_copy(cmdin,1,string_pos(" ",cmdin)-1);
    cmdin = string_delete(cmdin,1,string_pos(" ",cmdin));
    count++; 
    

}until (0 == string_length(cmdin));


cmd[0] = string_lower(cmd[0]);
//Command list

if cmd[0] == "quit"{
    game_end();
    cmd_return("Quiting","report");
}

if cmd[0] == "ping"{
    cmd_return("Pong","report");
}
if cmd[0] == "start"{
    startup();
    cmd_return("Initialized variables","report");
}

if cmd[0] == "pause"{
    pause();
}


if cmd[0] == "rm"{
    
    switch(cmd[1]){
        case "testlevel":
            room_goto(rm_testlevel);
            break;
        case "menu":
            room_goto(rm_main_menu);
            break;
        case "options":
            room_goto(rm_options);
            break;
        default:
            output = "---Failed"
            break;
    }
    cmd_return("Changing room to " + cmd[1] + output,"report");
}

if cmd[0] == "say" || cmd[0] == "error" || cmd[0] == "report"{
    cmd_return(string_copy(argument0,string_length(cmd[0])+2,string_length(argument0)-string_length(cmd[0])+1),cmd[0]);
    

}

if cmd[0] == "health"{
    if string_letters(cmd[1]) == ""{
    
    if string_copy(cmd[1],1,1) == "+" || string_copy(cmd[1],1,1) == "-"{
        global.currenthealth += real(cmd[1]);
    }else{
        global.currenthealth = real(cmd[1]);
    }
    cmd_return("Health set to " + string(global.currenthealth),"report");
    }else{
        cmd_return("Numbers only","error");
    }
}

if cmd[0] == "maxhealth"{
    if string_letters(cmd[1]) == ""{
    
    if string_copy(cmd[1],1,1) == "+" || string_copy(cmd[1],1,1) == "-"{
        global.maxhealth += real(cmd[1]);
    }else{
        global.maxhealth = real(cmd[1]);
    }
    cmd_return("Max health set to " + string(global.maxhealth),"report");
    }else{
        cmd_return("Numbers only","error");
    }
}

if cmd[0] == "regenhealth"{
    if string_letters(cmd[1]) == ""{
    
    if string_copy(cmd[1],1,1) == "+" || string_copy(cmd[1],1,1) == "-"{
        global.healthregen += real(cmd[1]);
    }else{
        global.healthregen = real(cmd[1]);
    }
    cmd_return("Health regen set to " + string(global.healthregen),"report");
    }else{
        cmd_return("Numbers only","error");
    }   

}


if cmd[0] == "bind"{
    //Bind Command
    if string_copy(cmd[1],0,2) == "vk"{
        key = global.keys[? cmd[1]];
    }else if string_digits(cmd[1]) == cmd[1]{
        key = real(cmd[1]);
    }else if string_length(cmd[1]) == 1 {
        key = ord(cmd[1]);
    }else{
        cmd_return("Key not found","error");
        exit;
    }

        global.keybindings[key] = string_copy(argument0,string_length(cmd[0]+cmd[1])+3,string_length(argument0)-string_length(cmd[0]+cmd[1])+1);
        global.keybindings_list = global.keybindings_list+string(key)+" ";

    
}
