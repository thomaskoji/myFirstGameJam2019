//horizontal
if(place_meeting(x + velocity[XAXIS], y, _solid_parent))
{
	var _yplus = 0;
	while(place_meeting(x + velocity[XAXIS], y - _yplus, _solid_parent) && _yplus <= abs(1 * velocity[XAXIS]))
	{
		++_yplus; 
	}
	if (place_meeting(x + velocity[XAXIS], y - _yplus, _solid_parent))
	{
			while(!place_meeting(x + sign(velocity[XAXIS]), y, _solid_parent))
		{
			x += sign(velocity[XAXIS]);
		}
		velocity[XAXIS] = 0;
	}
	else
	{
		y -= _yplus;
	}

}
x += velocity[XAXIS];

//vertical
if(place_meeting(x, y + velocity[YAXIS], _solid_parent))
{
	if (velocity[YAXIS] < 0) { y = ceil(y);}
	else if (velocity[YAXIS] > 0) { y = floor(y);}
	
	while(!place_meeting(x, y + sign(velocity[YAXIS]), _solid_parent))
	{
		y += sign(velocity[YAXIS]);
	}
	velocity[YAXIS] = 0;
}
y += velocity[YAXIS];