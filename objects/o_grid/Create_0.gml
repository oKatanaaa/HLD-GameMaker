var _cell_width = 16;
var _cell_height = 16;

var _hcells = room_width div _cell_width;
var _vcells = room_height div _cell_height;

global.grid = mp_grid_create(0, 0, _hcells, _vcells, _cell_width, _cell_height);

// Add the solid obj
mp_grid_add_instances(global.grid, o_solid, false);