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
		for (var i = 0; i < 10;i++)
		{
			var inst = collision_point(get_lane(i),room_height div 2,obj_gem,false,true);
			if (inst != noone)
			{
				with (inst)
				{
					effect_create_above(ef_firework,x,y,0,color);
					instance_destroy(); // wait to destroy to avoid error looking for chain reaction	
				}
			}
		}
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
	if (abs(y - room_height div 2) <= 10)
	{
		show_debug_message(string(y) + " " + string(room_height div 2));
		vspd = 0;
		y = room_height div 2;
	}
	
}
if (abs(y - room_height div 2) > sprite_height div 2)
{
	if (y < room_height div 2)
	{
		vspd = 10;
	}
	else if (y > room_height div 2)
	{
		vspd = -10;
	}
}
