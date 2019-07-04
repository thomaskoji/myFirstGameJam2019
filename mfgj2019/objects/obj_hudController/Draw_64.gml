draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_black);
draw_set_font(fnt_debug);

#region direction conversion to string thing
var _dir = "no direction";
switch global.inputDirection
{
	case -1:
		_dir = "no direction";
	break;
	
	case 0:
		_dir = "east";
	break;
	
	case 45:
		_dir = "north east";
	break;
	
	case 90:
		_dir = "north";
	break;
	
	case 135:
		_dir = "north west";
	break;
	
	case 180:
		_dir = "west";
	break;
	
	case 225:
		_dir = "south west";
	break;
		
	case 270:
		_dir = "south";
	break;
	
	case 315:
		_dir = "south east";
	break;
}
#endregion

var _debugString = "";
_debugString += string(fps) + " FPS " + "\n";
_debugString += "room " + room_get_name(room) + "\n";

draw_text(5,5, _debugString);