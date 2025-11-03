// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Update_choice() {
    // Проверяем что диалог активен и данные существуют
    if (!global.dialog_active || global.current_dialog == -1) {
        global.dialog_choices = [];
        return;
    }
    
    // Проверяем что global.dialog_data существует и содержит нужный диалог
    if (!variable_global_exists("dialog_data") || 
        global.current_dialog >= array_length(global.dialog_data)) {
        global.dialog_choices = [];
        return;
    }
    
    var dialog_data = global.dialog_data[global.current_dialog];
    var current_data = dialog_data[global.current_line];
    
    global.dialog_choices = [];
    
    // Проверяем есть ли выборы у текущей строки
    if (array_length(current_data.choices) > 0) {
        global.dialog_choices = current_data.choices;
    }
}