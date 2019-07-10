if(state_new)
{
	sprite_index=spr_playerFall;
}

scr_applyGravity();

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

#region state machine

if(velocity[YAXIS] == 0)
{
	stateSwitch("wait");
}

if(global.inputHorizontalTotal != 0 && !global.inputControlPressed && velocity[YAXIS] == 0)
{
	stateSwitch("run");
}

if(global.inputControlHeld && velocity[YAXIS] == 0)
{
	stateSwitch("crouch");
}

if(global.inputControlPressed && global.inputHorizontalTotal != 0 && velocity[YAXIS] == 0)
{
	stateSwitch("crouchWalk");
}

#endregion