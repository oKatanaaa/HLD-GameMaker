/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(state_ != dirk.idle && state_ != dirk.attack) {
	var _sprite_dir = sign(cos(point_direction(x, y, o_player.x, o_player.y)/(180/pi)));
	image_xscale = _sprite_dir;
	image_speed = 0.6;
}
