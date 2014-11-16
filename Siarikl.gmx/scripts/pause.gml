if instance_number(obj_pause) == 0{
    instance_create(0,0,obj_pause);
    cmd_return("Game paused","report");
}else{
    if instance_number(obj_dead) == 0{
    cmd_return("Game resumed","report");
    with (obj_pause){
    instance_destroy();
}}}
