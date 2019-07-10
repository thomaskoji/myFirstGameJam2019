#region State Machine

stateMachineCreate();

stateAdd("wait", player_state_wait);
stateAdd("run", player_state_run);
stateAdd("brake", player_state_brake);
stateAdd("jump", player_state_jump);
stateAdd("backflip", player_state_backflip);
stateAdd("fall", player_state_fall);

stateBeginIn("wait");

#endregion

#region Movement Properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

runMaxSpeed			= 3;
runFriction			= 0.2;
runAccel			= 0.1;

jump_power			= 3;
gravity_inc			= 0.2;
gravity_max			= 1 ;
jumped				= false;
onGround			= false;

face_direction		=1; //1 right, -1 left.p

#endregion

#region Image Properties

waitImageSpeed		= 0.1;
runImageSpeed		= 0.25;

#endregion