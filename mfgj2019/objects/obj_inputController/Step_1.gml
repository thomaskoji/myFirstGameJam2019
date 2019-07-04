/// @description UPDATE CONTROLS

global.inputUpPressed		= keyboard_check_pressed(upKey);
global.inputUpHeld			= keyboard_check(upKey);
global.inputUpReleased		= keyboard_check_released(upKey);

global.inputDownPressed		= keyboard_check_pressed(downKey);
global.inputDownHeld		= keyboard_check(downKey);
global.inputDownReleased	= keyboard_check_released(downKey);

global.inputLeftPressed		= keyboard_check_pressed(leftKey);
global.inputLeftHeld		= keyboard_check(leftKey);
global.inputLeftReleased	= keyboard_check_released(leftKey);

global.inputRightPressed	= keyboard_check_pressed(rightKey);
global.inputRightHeld		= keyboard_check(rightKey);
global.inputRightReleased	= keyboard_check_released(rightKey);

global.inputSpacePressed	= keyboard_check_pressed(spaceKey);
global.inputSpaceHeld		= keyboard_check(spaceKey);
global.inputSpaceReleased	= keyboard_check_released(spaceKey);

global.inputShiftPressed	= keyboard_check_pressed(shiftKey);
global.inputShiftHeld		= keyboard_check(shiftKey);
global.inputShiftReleased	= keyboard_check_released(shiftKey);

global.inputControlPressed	= keyboard_check_pressed(controlKey);
global.inputControlHeld		= keyboard_check(controlKey);
global.inputControlReleased	= keyboard_check_released(controlKey);

global.inputAttackPressed	= keyboard_check_pressed(EKey);
global.inputAttackHeld		= keyboard_check(EKey);
global.inputAttackReleased	= keyboard_check_released(EKey);

global.inputHorizontalTotal = global.inputRightHeld - global.inputLeftHeld;
global.inputVerticalTotal	= global.inputUpHeld - global.inputDownHeld;

if(point_distance(0,0,global.inputHorizontalTotal,global.inputVerticalTotal) > 0)
	global.inputDirection = point_direction(0,0,global.inputHorizontalTotal,global.inputVerticalTotal);
else
	global.inputDirection = no_direction;