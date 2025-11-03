dialog_system_init()

// 1. Инициализация системы
dialog_system_init();

// 2. Создание данных диалогов
global.dialog_data = [];

// 3. Диалог 0
global.dialog_data[0] = [
    {
        text: "Hello! How are you?",
        choices: []
    },
    {
        text: "Choose your response:",
        choices: [
            { text: "Great, thank you!", goto_line: 2 },
            { text: "Not so good...", goto_line: 3 }
        ]
    }
];

// 4. Запуск диалога (с задержкой)
alarm[0] = 1; // Запустим через 1 кадр