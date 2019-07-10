if (global.inputDownPressed)
{
	cursorLocation += 1;
}
else if (global.inputUpPressed)
{
	cursorLocation -= 1;
}

if  (cursorLocation > ds_grid_height(currentMenuGrid) -1)
{
	cursorLocation = 0;
}

if (cursorLocation < 0)
{
	cursorLocation = ds_grid_height(currentMenuGrid) -1;
}

var _buttonType = ds_grid_get(currentMenuGrid, optionsGridProperties.button_type, cursorLocation);

if (_buttonType = buttonTypes.toggle)
{
	if (global.inputEnterPressed)
	{
		var _scriptToRun = ds_grid_get(currentMenuGrid, optionsGridProperties.script, cursorLocation);
		var _argument = ds_grid_get(currentMenuGrid, optionsGridProperties.argument_to_pass, cursorLocation);
		if (_argument == NULLVALUE)
		{
			script_execute(_scriptToRun);
		}
		else
		{
			script_execute(_scriptToRun, _argument);
		}
	}
}
else if (_buttonType = buttonTypes.slider)
{
	var _sliderMove = 0;
	if (global.inputLeftPressed) {_sliderMove = -1;}
	else if (global.inputRightPressed) {_sliderMove = 1;}
	
	if (_sliderMove != 0)
	{
		var _scriptToRun = ds_grid_get(currentMenuGrid, optionsGridProperties.script, cursorLocation);
		var _argument = ds_grid_get(currentMenuGrid, optionsGridProperties.argument_to_pass, cursorLocation);
		script_execute(_scriptToRun, _argument*_sliderMove);
	}
}