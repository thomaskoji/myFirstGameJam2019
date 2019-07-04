event_inherited();

draw_set_font(fnt_debug);
/*
optionsGridA = ds_grid_create(optionsGridProperties.enum_size, 2);
scr_declareOptionsMenu(optionsGridA, 0, "start game", scr_startGame, NULLVALUE, false, buttonTypes.toggle);
scr_declareOptionsMenu(optionsGridA, 1, "options", scr_openOptions, NULLVALUE, false, buttonTypes.toggle);
*/
scr_setOptionVariableStrings();

optionSeparation = string_height("A");
currentMenuGrid = optionsGridA; 
currentMenuHeight = ds_grid_height(currentMenuGrid); // # of entries in current Grid 
cursorLocation = 0 ; // Location of the cursor in the current menu optionSeparation = 50; // Distance (in pixels) that options should be separated) 
