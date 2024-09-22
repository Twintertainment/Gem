/// @description create enemy gem

if (!instance_exists(obj_gem_shooter_down))
{
	var inst = instance_create_layer(get_lane(5),32,"Instances",obj_gem_shooter_down);
	inst.lane = irandom(9);
	inst.level = get_level(room_height -32)
	inst.image_index = choose(blue,cyan,green,orange);//,pink,purple,red,yellow);
	inst.color = color_from_index(inst.image_index);
	inst.vspd = 10;
}


//alarm[1] = 2 * Game_Second();