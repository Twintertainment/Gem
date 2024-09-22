/// @description Insert description here
// You can write your code in this editor


draw_text(10,10, "Player:  " + string(player_health) + "   Other:  " + string(other_health));

draw_line(0,256,room_width,256);
draw_line(0,room_height - 256,room_width,room_height-256);
draw_line(0,room_height div 2,room_width,room_height div 2);