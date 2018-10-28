/// @description Attack State

scr_move_object_to();


if(!hitbox_is_created_) {
	var _attack_sprite = attack_sprite_[direction_attack_];
	var _target_array = [o_enemy];
	scr_create_hitbox(x,y - 10,_attack_sprite,1,_target_array, image_xscale);
}


if (scr_animation_ended()) {
	hitbox_is_created_ = false;
	state_ = player.move;
}
