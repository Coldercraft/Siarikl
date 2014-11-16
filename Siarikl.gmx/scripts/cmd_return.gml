if is_undefined(argument1){
    argument1 = "report";
}

global.cmdoutput = "<" + object_get_name(object_index) + "@" + string(current_hour) + ":" + string(current_minute) + ":" + string(current_second) +"@" + string_upper(argument1) +  "> " + argument0;
show_debug_message(global.cmdoutput); 
