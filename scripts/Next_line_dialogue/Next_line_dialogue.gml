// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Next_line_dialogue(){
  var dialog_data = global.dialog_data[global.current_dialog];
    
    // Если есть выборы, обрабатываем выбор
    if (array_length(global.dialog_choices) > 0) {
        var choice_data = global.dialog_choices[global.selected_choice];
        
        // Если выбор ведет на конкретную строку
        if (choice_data.goto_line != -1) {
            global.current_line = choice_data.goto_line;
        } 
        // Иначе просто идем дальше
        else {
            global.current_line++;
        }
    } 
    // Если выборов нет, просто идем дальше
    else {
        global.current_line++;
    }
    
    // Проверяем не закончился ли диалог
    if (global.current_line >= array_length(dialog_data)) {
        End_dialogue();
        return;
    }
    
    // Обновляем выборы для новой строки
    Update_choice();
}