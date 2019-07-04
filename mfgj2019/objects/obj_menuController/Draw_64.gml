draw_set_halign(fa_center);
draw_set_valign(fa_middle);

currentMenuHeight = ds_grid_height(currentMenuGrid);
//Then, let's draw the current menu in all of its glory:

if (ds_exists(currentMenuGrid, ds_type_grid))
{
    // SET BASIC DRAW VARIABLES FOR OPTIONS MENU
    var _centerX = room_width*.5;
    var _centerY = room_height*.5;
    var _optionSeparation = optionSeparation;
    var _optionsTop = currentMenuHeight*optionSeparation*-.2;

    // DRAW EACH OPTION IN OPTIONS MENU
    for (var i = 0; i < currentMenuHeight; ++i)
    {
        var _text = ds_grid_get(currentMenuGrid, optionsGridProperties.name, i);

        // DETERMINE IF CURRENTLY SELECTED OPTION IS A SLIDER SWITCH
        var _buttonType = ds_grid_get(currentMenuGrid, optionsGridProperties.button_type, i);

        // ADD VARIABLE VALUES FOR OPTIONS TO APPRORPRIATE MENUS
        var _displaysVariable = ds_grid_get(currentMenuGrid, optionsGridProperties.displays_value, i);
        if (_displaysVariable == true)
        {
            _text += optionVariableNameArray[i];
        }

        // ADJUST STRING IF SLIDER SWITCH
        // THIS CAN BE REPLACED WITH IMAGES OR ICONOGRAPHY INSTEAD OF SIMPLE TEXT
        if (_buttonType == buttonTypes.slider)
        {
            _text = "<- " + _text + " ->";
        }

        // DRAW APPROPRIATE TEXT AND COLOR DEPENDING ON SLIDER SWITCH SETTINGS
        if (cursorLocation == i )
        {
			draw_set_color(c_white);
			draw_set_alpha(.8);
            draw_rectangle(_centerX - string_width(ds_grid_get(currentMenuGrid,optionsGridProperties.name,i))*.6,
			_centerY + 3 - _optionsTop + i*_optionSeparation,
			_centerX + string_width(ds_grid_get(currentMenuGrid,optionsGridProperties.name,i))*.55,
			_centerY - 6 - _optionsTop + i*_optionSeparation,
			false);
            draw_set_color(c_white);
			draw_set_alpha(1);
			draw_text(_centerX, _centerY - _optionsTop + i*_optionSeparation, _text);
        }
        else if (cursorLocation == i and _buttonType == buttonTypes.slider)
        {
			draw_set_color(c_white);
			draw_set_alpha(.5);
            draw_rectangle(_centerX - string_width(ds_grid_get(currentMenuGrid,optionsGridProperties.name,i))*.6,
			_centerY + 3 - _optionsTop + i*_optionSeparation,
			_centerX + string_width(ds_grid_get(currentMenuGrid,optionsGridProperties.name,i))*.55,
			_centerY - 6 - _optionsTop + i*_optionSeparation,
			false);
            // SLIDERS OPTIONS SHOULD NEVER HIGHLIGHT, BUT THE TOGGLE SWITCHES ON EITHER SIDE SHOULD HIGHLIGHT YELLOW
            var _halfStringWidth = string_width(_text)*.5;
            draw_set_color(c_white);
            draw_text(_centerX, _centerY - _optionsTop + i*_optionSeparation, _text);
        }
        else
        {
            // DRAW NORMAL MENU OPTIONS IN WHITE WHEN NOT HIGHLIGHTED
            draw_set_color(c_white);
            draw_text(_centerX, _centerY - _optionsTop + i*_optionSeparation, _text);
        }
        draw_set_halign(fa_center);
        draw_set_color(c_white);
    }
}