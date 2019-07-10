if(state_new)
{
	image_speed = waitImageSpeed;
	sprite_index = spr_playerWait;
}

scr_applyXFriction(runFriction);

#region state machine

if(global.inputHorizontalTotal != 0 && !global.inputControlPressed)
{
	stateSwitch("run");
}

if(global.inputControlHeld)
{
	stateSwitch("crouch");
}

if(global.inputControlPressed && global.inputHorizontalTotal != 0)
{
	stateSwitch("crouchWalk");
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