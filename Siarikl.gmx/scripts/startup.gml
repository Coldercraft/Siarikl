//If forced startup
if room_get_name(room) != "rm_startup"{
    room_goto(rm_startup);
}
//Initialize variables
global.cmdoutput = "";
global.cmdlog = "";
global.keyboard[0] = vk_up;
global.keyboard[1] = vk_left;
global.keyboard[2] = vk_down;
global.keyboard[3] = vk_right;
global.keyboard[4] = mb_right;
global.currenthealth = 70;
global.maxhealth = 100;
global.healthregen = 0.1;
global.cmdhistory = "";


global.keybindings = "<";
//Keyboard converter thank you ZeCatox on reddit
global.keys = ds_map_create();
global.keys[?"vk_left"] = vk_left;
global.keys[?"vk_right"] = vk_right;
global.keys[?"vk_up"] = vk_up;
global.keys[?"vk_down"] = vk_down;
global.keys[?"vk_enter"] = vk_enter;
global.keys[?"vk_escape"] = vk_escape;
global.keys[?"vk_space"] = vk_space;
global.keys[?"vk_shift"] = vk_shift;
global.keys[?"vk_control"] = vk_control;
global.keys[?"vk_alt"] = vk_alt;
global.keys[?"vk_backspace"] = vk_backspace;
global.keys[?"vk_tab"] = vk_tab;
global.keys[?"vk_home"] = vk_home;
global.keys[?"vk_end"] = vk_end;
global.keys[?"vk_delete"] = vk_delete;
global.keys[?"vk_insert"] = vk_insert;
global.keys[?"vk_pageup"] = vk_pageup;
global.keys[?"vk_pagedown"] = vk_pagedown;
global.keys[?"vk_pause"] = vk_pause;
global.keys[?"vk_printscreen"] = vk_printscreen;
global.keys[?"vk_f1"] = vk_f1;
global.keys[?"vk_f2"] = vk_f2;
global.keys[?"vk_f3"] = vk_f3;
global.keys[?"vk_f4"] = vk_f4;
global.keys[?"vk_f5"] = vk_f5;
global.keys[?"vk_f6"] = vk_f6;
global.keys[?"vk_f7"] = vk_f7;
global.keys[?"vk_f8"] = vk_f8;
global.keys[?"vk_f9"] = vk_f9;
global.keys[?"vk_f10"] = vk_f10;
global.keys[?"vk_f11"] = vk_f11;
global.keys[?"vk_f12"] = vk_f12;
global.keys[?"vk_numpad0"] = vk_numpad0;
global.keys[?"vk_numpad1"] = vk_numpad1;
global.keys[?"vk_numpad2"] = vk_numpad2;
global.keys[?"vk_numpad3"] = vk_numpad3;
global.keys[?"vk_numpad4"] = vk_numpad4;
global.keys[?"vk_numpad5"] = vk_numpad5;
global.keys[?"vk_numpad6"] = vk_numpad6;
global.keys[?"vk_numpad7"] = vk_numpad7;
global.keys[?"vk_numpad8"] = vk_numpad8;
global.keys[?"vk_numpad9"] = vk_numpad9;
global.keys[?"vk_multiply"] = vk_multiply;
global.keys[?"vk_divide"] = vk_divide;
global.keys[?"vk_add add"] = vk_add;
global.keys[?"vk_subtract"] = vk_subtract;
global.keys[?"vk_decimal"] = vk_decimal;
