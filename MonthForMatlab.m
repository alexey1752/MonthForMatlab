%%% This code allows you to draw matlab plots with months in your language
%%% I have already added Belarusian, Ukrainian and Lithuanian languages ​​here

%%% Сreating datetime array
data=datetime(2022,1,1,0,0,0):days(2):datetime(2022,12,31,0,0,0); 

%%% Months in Belarusian
BY = {
    'Студзень';'Люты';'Сакавік';'Красавік';
    'Май';'Чэрвень';'Ліпень';'Жнівень';
    'Верасень';'Кастрычнік';'Лістапад';'Снежань'
    };

%%% Months in Ukrainian
UA = {
    'Січень';'Лютий';'Березень';'Квітень';
    'Травень';'Червень';'Липень';'Серпень';
    'Вересень';'Жовтень';'Листопад';'Грудень'
    };

%%% Months in Lithuanian
LT = {
    'Sausis';'Vasaris';'Kovas';'Balandis';
    'Gegužės';'Birželis';'Liepa';'Rugpjūtis';
    'Rugsėjis';'Spalis';'Lapkritis';'Gruodis'
    };



%%% In fact you can write down any words next to your axis
%%% To do this, uncomment line 55, comment out line 50 and 53 and run the program
%%% After run, the X_symbols will be filled with X-axis symbols
%%% Open X_symbols in the Workspace and modify it
%%% Don't forget to comment out line 55 and uncomment line 53 during the next run!!



%%% Fonts and size
set(0,'DefaultAxesFontSize',12,'DefaultAxesFontName','Times New Roman'); 
set(0,'DefaultTextFontSize',12,'DefaultTextFontName','Times New Roman');

%%% Create figure window
figure('Units', 'normalized', 'OuterPosition', [0 0 1 1]);

%%% Сreates a 2-D line plot
plot(data,1:length(data))
xlim([data(1),data(end)])

%%% Сhoose language(BY, UA or LT)
X_symbols = LT;

%%% Set custom X-axis
set(gca,'XTickLabel',X_symbols);

%X_symbols=get(gca,'XTickLabel');

%%% Tested in matlab2020
%%% borisovets.alexey@gmail.com