if(state_new && !jumped)
{
	image_speed = 0.5;
	sprite_index = spr_playerBackflip;
	velocity[YAXIS] -= jump_power;
	jumped = true;
}

scr_applyGravity();

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
	jumped = false;
}