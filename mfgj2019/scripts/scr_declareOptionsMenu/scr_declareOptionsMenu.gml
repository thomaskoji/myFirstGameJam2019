/// @description declares a new option within a menu, and places it inside the referenced grid.
/// @param grid
/// @param cursorLocation
/// @param name
/// @param scriptToRun
/// @param argumentToPass
/// @param displaysValueBoolean
/// @param buttonType
 
var _grid = argument0;
var _location = argument1;
var _name = argument2;
var _script = argument3;
var _argumentToPass = argument4;
var _displaysVariable = argument5;
var _buttonType = argument6; // 0 - toggle, 1 - slider
 
ds_grid_set(_grid, 0, _location, _name);
ds_grid_set(_grid, 1, _location, _script);
ds_grid_set(_grid, 2, _location, _argumentToPass);
ds_grid_set(_grid, 3, _location, _displaysVariable);
ds_grid_set(_grid, 4, _location, _buttonType);