#macro NULLVALUE -9999
#macro XAXIS 0
#macro YAXIS 1

//Direction
#macro no_direction -1
#macro east 0
#macro north_east 45
#macro north 90
#macro north_west 135
#macro west 180
#macro south_west 225
#macro south 270
#macro south_east 315

enum optionsGridProperties
{
	name,
	script,
	argument_to_pass,
	displays_value,
	button_type,
	enum_size
}

enum buttonTypes
{
	toggle,
	slider,
	enum_size
}