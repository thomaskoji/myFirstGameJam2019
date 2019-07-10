/// @description apply x movement
/// @param dir,accel,maxSpeed,fric,...overMaxFriction

var _dir = argument[0];
var _accel = argument[1];
var _maxSpeed = argument[2];
var _fric = argument[3];
var _overMaxFriction = NULLVALUE;

if (argument_count > 4)
{_overMaxFriction = argument[4];}

if (_dir != 0)
{
	if (abs(velocity[XAXIS]) < _maxSpeed or 
		(abs(velocity[XAXIS])) == _maxSpeed and 
		_dir = sign(velocity[XAXIS]) * -1)
	{velocity[XAXIS] += _dir * _accel;}
	
	if (abs(velocity[XAXIS]) > _maxSpeed)
	{
		velocity[XAXIS] = sign(velocity[XAXIS]) * _maxSpeed;
	}
}
else
{
	scr_applyXFriction(_fric);
}