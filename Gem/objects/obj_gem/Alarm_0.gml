/// @description wait to destroy items

if (player)
{
	obj_manager.other_health--;
}
else
{
	obj_manager.player_health--;
}

instance_destroy();