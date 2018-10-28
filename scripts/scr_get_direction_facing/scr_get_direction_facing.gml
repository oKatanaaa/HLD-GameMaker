//@arg x_input
//@arg y_input

var _x = argument0
var _y = argument1

var _direction = round(point_direction(0,0,_x,_y) / 90)

if _direction == 4
	_direction = 0
	
return _direction