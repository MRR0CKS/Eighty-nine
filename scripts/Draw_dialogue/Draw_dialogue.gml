// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_dialog() {
    if (!global.dialog_active) return;
    
    var style = global.dialog_style;
    
    // ✅ РИСУЕМ ОТНОСИТЕЛЬНО ВИДА (VIEW), а не камеры
    // Получаем размеры вида (view)
    var view_width = camera_get_view_width(view_camera[0]);
    var view_height = camera_get_view_height(view_camera[0]);
    
    // Рассчитываем позицию диалогового окна по центру ВИДА
    var box_x = (view_width - style.width) ;
    var box_y = (view_height - style.height) *2.5  ;
    
    // Текст позиции
    var text_x = box_x + style.padding;
    var text_y = box_y + style.padding;
    var choice_x = text_x + 10;
    var choice_start_y = text_y + 30;
    
    // ✅ Рисуем фон диалогового окна
    draw_set_color(c_black);
    draw_set_alpha(0.50);
    draw_rectangle(box_x, box_y, box_x + style.width, box_y + style.height, true);
    draw_set_alpha(1);
    
    // ✅ Рисуем рамку
    draw_set_color(c_black);
	draw_set_alpha(0.85)
    draw_rectangle(box_x, box_y, box_x + style.width, box_y + style.height, false);
    
    // ✅ Устанавливаем шрифт и выравнивание
  //  draw_set_font(style.font);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(style.color_text);
    
    // Получаем текущие данные диалога
    var dialog_data = global.dialog_data[global.current_dialog];
    var current_data = dialog_data[global.current_line];
    
    // ✅ Рисуем текст NPC
    draw_text(text_x, text_y, current_data.text);
    
    // ✅ Рисуем выборы если они есть
    if (array_length(global.dialog_choices) > 0) {
        for (var i = 0; i < array_length(global.dialog_choices); i++) {
            var choice = global.dialog_choices[i];
            var y_pos = choice_start_y + (i * style.choice_spacing);
            
            // Выделяем выбранный вариант
            if (i == global.selected_choice) {
                draw_set_color(style.color_selected);
                draw_text(choice_x - 15, y_pos, ">");
                draw_text(choice_x, y_pos, choice.text);
            } else {
                draw_set_color(style.color_choice);
                draw_text(choice_x, y_pos, choice.text);
            }
        }
    }
    
    // ✅ Рисуем подсказку для продолжения
    else {
        draw_set_color(c_gray);
        draw_text(text_x, choice_start_y, "Press any key to continue...");
    }
    
    // Сбрасываем настройки
    draw_set_color(c_white);
}