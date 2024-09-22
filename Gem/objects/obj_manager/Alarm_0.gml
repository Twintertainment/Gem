/// @description create shooter


if (!instance_exists(obj_gem_shooter))
{
	var inst = instance_create_layer(get_lane(5),room_height -32,"Instances",obj_gem_shooter);
	inst.lane = 5;
	inst.level = get_level(room_height -32)
	inst.image_index = choose(blue,cyan,green,orange);//,pink,purple,red,yellow);
	inst.color = color_from_index(inst.image_index);
}


alarm[0] = Game_Second();