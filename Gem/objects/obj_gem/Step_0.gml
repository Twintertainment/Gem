/// @description Insert description here
// You can write your code in this editor
//x = get_lane(lane);

if (y > room_height - 256 || y < 256)
{
	if (collision_point(x,room_height div 2,obj_gem,false,true))
	{
		y = room_height div 2;
		vspd = 0;
	}
	else
	{
		// todo: clear the middle line
		instance_destroy();
	}
}

if (vspd != 0)
{
	if (!place_meeting(x,y + vspd,obj_gem))
	{
		y += vspd;
	}
	else
	{
		var temp_y = vspd;
		while (place_meeting(x,y+temp_y,obj_gem))
		{
			temp_y -= sign(temp_y);
		}
		vspd = 0;
	}
}
