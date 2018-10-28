///@arg x
///@arg y
///@arg sprite
///@arg damage
///@arg target_array
///@arg xscale

var _x = argument0;
var _y = argument1;
var _sprite = argument2;
var _damage = argument3;
var _target_array = argument4;
var _xscale = argument5;

var _hitbox = instance_create_layer(_x,_y,"Instances",o_hitbox);

_hitbox.damage_ = _damage;
_hitbox.targets_ = _target_array;
_hitbox.sprite_index = _sprite;
_hitbox.depth = -_y;
_hitbox.image_xscale = _xscale;