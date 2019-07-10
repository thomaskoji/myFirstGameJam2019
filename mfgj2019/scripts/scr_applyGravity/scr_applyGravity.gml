if (!onGround)
{
	velocity[YAXIS] += gravity_inc;
	
	if (velocity[YAXIS] >= gravity_max)
	{velocity[YAXIS] = gravity_max}
}