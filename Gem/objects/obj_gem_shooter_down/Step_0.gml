/// @description Insert description here
// You can write your code in this editor
x = get_lane(lane);

if (!place_meeting(x,y+direction_y *vspd,obj_gem))
{
	y += direction_y * vspd;
}
else
{
	var temp_y = vspd;
	vspd = 0;
	while (place_meeting(x,y+temp_y,obj_gem))
	{
		temp_y -= sign(temp_y);
	}
	var inst = instance_create_layer(x,y,"Instances",obj_gem);
	inst.lane = lane;
	inst.level = get_level(y);
	inst.image_index = image_index;
	inst.color = color_from_index(image_index);
	inst.destroying = false;
	inst.image_speed = 0;
	inst.player = false;
	
	color = c_white; 
	with (inst)
	{
		event_user(0); // handle gem matches
	}
	instance_destroy();
}

if (y > room_height - 256) //todo: fix to place in the middle without bouncing out of bounds
{
	vspd = 0;
	y = room_height div 2;
	var inst = instance_create_layer(x,y,"Instances",obj_gem);
	inst.level = get_level(y);
	inst.lane = lane;
	inst.image_index = image_index;
	inst.color = color_from_index(image_index);
	inst.destroying = false;
	inst.image_speed = 0;
	
	instance_destroy()
	
}

