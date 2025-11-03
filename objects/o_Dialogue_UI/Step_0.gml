// Обработка ввода для диалогов (переносим из o_Dialogue_manager)
if (global.dialog_active) {
    // Обработка выбора вариантов
    if (array_length(global.dialog_choices) > 0) {
        // Стрелки вверх/вниз для выбора
        if (keyboard_check_pressed(ord("W"))) {
            global.selected_choice--;
            if (global.selected_choice < 0) {
                global.selected_choice = array_length(global.dialog_choices) - 1;
            }
        }
        
        if (keyboard_check_pressed(ord("S"))) {
            global.selected_choice++;
            if (global.selected_choice >= array_length(global.dialog_choices)) {
                global.selected_choice = 0;
            }
        }
        
        // Enter для подтверждения выбора
        if (keyboard_check_pressed(vk_enter)) {
            next_dialog_line();
        }
    } 
    // Если выборов нет - любая клавиша для продолжения
    else if (keyboard_check_pressed(vk_anykey)) {
        next_dialog_line();
    }
    
    // Escape для выхода из диалога
    if (keyboard_check_pressed(vk_escape)) {
        end_dialog();
    }
}