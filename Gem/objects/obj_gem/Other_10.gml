/// @description collision check
if (destroying) exit; // cancel if already marked
destroying = true;

var instup = collision_point(x,y-64,obj_gem,false,true);
var instdown = collision_point(x,y+64,obj_gem,false,true);
var instleft = collision_point(x-64,y,obj_gem,false,true);
var instright = collision_point(x+64,y,obj_gem,false,true);

if (y < 256 || y > room_height -256)
{
	var instmiddle = collision_point(x,room_height div 2,obj_gem,false,true);
	if (instmiddle != noone)
	{
		with (instmiddle)
		{
			effect_create_above(ef_firework,x,y,0,color);
			alarm[0] = 2; // wait to destroy to avoid error looking for chain reaction		
		}
	}
}

if (instup != noone && instup.color == color) // if partial match to recursively check
{
	with(instup)
	{
		player = other.player;
		event_user(0);
	}
}
if (instdown != noone && instdown.color == color) // if partial match to recursively check
{
	with(instdown)
	{
		player = other.player;
		event_user(0);
	}
}

if (instleft != noone && instleft.color == color) // if partial match to recursively check
{
	with(instleft)
	{
		player = other.player;
		event_user(0);
	}
}

if (instright != noone && instright.color == color) // if partial match to recursively check
{
	with(instright)
	{
		player = other.player;
		event_user(0);
	}
}

if (instup != noone && instdown !=noone && instup.color == color && instdown.color == color) // remove if vertical match
{
	with (instup)
	{
		effect_create_above(ef_firework,x,y,0,color);
		alarm[0] = 2; // wait to destroy to avoid error looking for chain reaction
	}
	
	effect_create_above(ef_firework,x,y,0,color);
	alarm[0] = 2; // wait to destroy to avoid error looking for chain reaction
	
	with (instdown)
	{
		effect_create_above(ef_firework,x,y,0,color);
		alarm[0] = 2; // wait to destroy to avoid error looking for chain reaction
	}
}

if (instleft != noone && instright !=noone && instleft.color == color && instright.color == color) // remove if horizontal match
{
	with (instleft)
	{
		effect_create_above(ef_flare,x,y,0,color);
		alarm[0] = 2; // wait to destroy to avoid error looking for chain reaction
	}
	
	effect_create_above(ef_flare,x,y,0,color);
	alarm[0] = 2; // wait to destroy to avoid error looking for chain reaction
	
	with (instright)
	{
		effect_create_above(ef_flare,x,y,0,color);
		alarm[0] = 2; // wait to destroy to avoid error looking for chain reaction
	}
}

alarm[1] = 2; // wait to allow destruction check again.

	