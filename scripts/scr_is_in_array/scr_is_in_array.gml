///@arg object
///@arg array

var _obj = argument0;
var _array = argument1;
var _array_length = array_length_1d(_array);

for(var _i = 0; _i < _array_length; _i++) {
	if (_array[_i] == _obj or object_is_ancestor(_obj,_array[_i]))
		return true;
}

return false;