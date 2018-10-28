///@arg text array

var _arr = argument0;
var _len = array_length_1d(_arr);

for(var i = 0; i < _len; i++) {
	draw_text(8, 8 + i * _txt_h, _arr[i]);
}