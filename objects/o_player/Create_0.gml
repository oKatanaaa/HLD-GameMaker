start_speed_ = 0;
speed_ = start_speed_;
walk_speed_ = 1;
max_speed_ = 1.7;
acceleration_ = 0.09;

health_ = 4;
invincible_ = false;


enum dir {
	right,
	up,
	left,
	down
}

enum player {
	//Player states
	move,
	jump,
	attack
}
state_ = player.move;

direction_facing_ = dir.down;

sprite_[player.move,dir.down] = s_player_run_down_d;
sprite_[player.move,dir.right] = s_player_run_right_d;
sprite_[player.move,dir.left] = s_player_run_right_d;
sprite_[player.move,dir.up] = s_player_run_up_d;

sprite_[player.jump,dir.down] = s_player_run_down_d;
sprite_[player.jump,dir.right] = s_player_run_right_d;
sprite_[player.jump,dir.left] = s_player_run_right_d;
sprite_[player.jump,dir.up] = s_player_run_up_d;

sprite_[player.attack,dir.down] = s_player_attack_down;
sprite_[player.attack,dir.right] = s_player_attack_right;
sprite_[player.attack,dir.left] = s_player_attack_right;
sprite_[player.attack,dir.up] = s_player_attack_up;

attack_sprite_[dir.right] = s_player_sword_right;
attack_sprite_[dir.up] = s_player_sword_up;
attack_sprite_[dir.left] = s_player_sword_right;
attack_sprite_[dir.down] = s_player_sword_down;

start_sprite_[dir.down] = s_player_start_down;
start_sprite_[dir.right] = s_player_start_right;
start_sprite_[dir.left] = s_player_start_right;
start_sprite_[dir.up] = s_player_start_up;

hitbox_is_created_ = false;