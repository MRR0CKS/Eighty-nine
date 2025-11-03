
function dialog_system_init() {
    global.dialog_active = false;
    global.current_dialog = -1;
    global.current_line = 0;
    global.dialog_choices = [];
    global.selected_choice = 0;
     global.player_can_move = true;
	 // Стили диалогового окна
	    var dialog_width = 500;  // Ширина окна
    var dialog_height = 120; // Высота окна
    
    // Стили диалогового окна (позиция будет рассчитываться динамически)
     global.dialog_style = {
        width: 500,
        height: 150,
        color_text: c_white,
        color_choice: c_yellow,
        color_selected: c_red,
        padding: 15,
        choice_spacing: 20
    };
}