// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function End_dialogue(){
    global.dialog_active = false;
    global.current_dialog = -1;
    global.current_line = 0;
    global.dialog_choices = [];
    global.selected_choice = 0;
	global.player_can_move = true;
}