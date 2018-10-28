///@arg value
///@arg target
///@arg friction

var _current = argument0;			//starting value
var _target = argument1;			//value we want to approach to
var _friction = argument2;

if(_current < _target)
	return min(_current + _friction, _target);
else
	return max(_current - _friction, _target);