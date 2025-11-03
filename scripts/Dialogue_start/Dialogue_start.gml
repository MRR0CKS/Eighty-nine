// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Dialogue_start(dialog_id) {
    
    global.dialog_active = true;
    global.current_dialog = dialog_id;
    global.current_line = 0;
    global.dialog_choices = [];
    global.selected_choice = 0;
    global.player_can_move = false
	

    
    // Обновляем выборы для текущей строки
    Update_choice();
}