#macro blue 0
#macro cyan 1
#macro green 2
#macro orange 3
#macro pink 4
#macro purple 5
#macro red 6
#macro yellow 7

function get_lane(lane)
{
	switch lane
	{
		case 1:
			return 128;
		break;
		case 2:
			return 192;
		break;
		case 3:
			return 256;
		break;
		case 4:
			return 320;
		break;
		case 5:
			return 384;
		break;
		case 6:
			return 448;
		break;
		case 7:
			return 512;
		break;
		case 8:
			return 576;
		break;
		case 9:
			return 640;
		break;
		case 10:
			return 704;
		break;
		
		default:
			return 384;
	}
}

function get_level(index)
{
	return index mod 64;	
}

///@description color_from_index(index) return rgb color from color index macro
function color_from_index(index) 
{
	switch (index)
	{
		case blue:
			return c_blue;
		break;
		case cyan:
			return c_aqua;
		break;
		case green:
			return c_green;
		break;
		case orange:
			return c_orange;
		break;
		case pink:
			return make_color_rgb(255,125,125);
		break;
		case purple:
			return c_purple;
		break;
		case red:
			return c_red;
		break;
		case yellow:
			return c_yellow;
		break;
		
		default:
			return c_white;
	}
}

function Game_Second() // effectively a one second constant
{
	return game_get_speed(gamespeed_fps);
}