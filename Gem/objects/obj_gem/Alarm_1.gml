/// @description not destroying anymore no match
destroying = false;

if (abs(y - (room_height div 2)) < 32)
{
	y = room_height div 2;
}

if (y < room_height div 2 && !place_meeting(x,y + vspd,obj_gem)) // apply central gravity
{
	vspd = 10;
}
else if (y > room_height div 2 && !place_meeting(x,y + vspd,obj_gem))
{
	vspd = -10;
}

show_debug_message("Bounce " + string (y))