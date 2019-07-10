if(state_new)
{
	image_speed = runImageSpeed;
	sprite_index = spr_playerRun;
}

if(velocity[XAXIS] != 0)
		{face_direction = sign(velocity[XAXIS]);}

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

#region state machine


var _spdForSlide = .01;
if((velocity[XAXIS] < -_spdForSlide && global.inputDirection == east) || 
	 (velocity[XAXIS] > _spdForSlide && global.inputDirection == west))
{ 
	stateSwitch("brake");
}

if(global.inputControlPressed)
{
	stateSwitch("slide");
}
/*
if(global.inputMouseLeftPressed)
{
	stateSwitch("attackA");
}

if(global.inputMouseRightPressed)
{
	stateSwitch("attackHeavyA");
}
*/
if(velocity[XAXIS] == 0 && global.inputHorizontalTotal == 0)
{
	stateSwitch("wait");
}

if(!onGround)
{
	stateSwitch("fall");
}

if(global.inputSpacePressed)
{
	stateSwitch("jump");
}

#endregion