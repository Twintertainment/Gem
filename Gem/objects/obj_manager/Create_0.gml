/// @description Insert description here
// You can write your code in this editor
randomize();

for (var i = 0;i <10;i++)
{
	var inst = instance_create_layer(get_lane(i),room_height div 2,"Instances",obj_gem);
	inst.lane = i;
	inst.level = get_level(32);
}

player_health = 100;
other_health = 100;

alarm[0] = Game_Second();
//alarm[1] = 2 * Game_Second();