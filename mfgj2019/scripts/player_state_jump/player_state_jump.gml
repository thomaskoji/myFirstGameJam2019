if(state_new && !jumped)
{
	velocity[YAXIS] -= jump_power;
	sprite_index = spr_playerJump;
	jumped = true;
	
	state_var[0] = false; // player has let go of jump
}

if (state_var[0] = false and global.inputSpaceHeld == false)
{
	velocity[YAXIS] *= 0.8;
}

scr_applyGravity();

scr_applyXMovement(global.inputHorizontalTotal, runAccel, runMaxSpeed, runFriction);

if(velocity[YAXIS] > 0)
{
	stateSwitch("fall");
	jumped = false;
}