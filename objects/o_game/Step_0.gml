global.W_key = keyboard_check(ord("W"));
global.A_key = keyboard_check(ord("A"));
global.S_key = keyboard_check(ord("S"));
global.D_key = keyboard_check(ord("D"));
global.one_second = game_get_speed(gamespeed_fps);
//GETTING PLAYER INFO

var _pl_health = "health: " + string(o_player.health_);
var _pl_state = scr_info_player_state();
var _pl_alarm1 = "alarm[1]: " + string(o_player.alarm[1]);
var _pl_x = "x: " + string(o_player.x);
var _pl_y = "y: " + string(o_player.y);
var _pl_spd = "speed: " + string(o_player.speed_);

var _pl_dir = "direction: " + string(_dir);
text_array_ = [_pl_health, _pl_state, _pl_alarm1, _pl_x, _pl_y, _pl_spd, _pl_dir];