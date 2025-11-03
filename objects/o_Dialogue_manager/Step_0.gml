if (global.dialog_active) {
    // Обработка выбора вариантов
    if (array_length(global.dialog_choices) > 0) {
        // Стрелки вверх/вниз для выбора
        if (keyboard_check_pressed(vk_up)) {
            global.selected_choice--;
            if (global.selected_choice < 0) {
                global.selected_choice = array_length(global.dialog_choices) - 1;
            }
        }
        
        if (keyboard_check_pressed(vk_down)) {
            global.selected_choice++;
            if (global.selected_choice >= array_length(global.dialog_choices)) {
                global.selected_choice = 0;
            }
        }
        
        // Enter для подтверждения выбора
        if (keyboard_check_pressed(vk_enter)) {
            Next_line_dialogue();
        }
    } 
    // Если выборов нет - любая клавиша для продолжения
    else if (keyboard_check_pressed(vk_anykey)) {
         Next_line_dialogue();
    }
    
    // Escape для выхода из диалога
    if (keyboard_check_pressed(vk_escape)) {
        End_dialogue();
    }
}