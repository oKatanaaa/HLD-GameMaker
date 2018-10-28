draw_self();
var _health_count = "health: " + string(health_);
var _current_state = scr_info_dirk_state();
var _alarm1 = "alarm1: " + string(alarm[1]);
draw_text_transformed(x - 9,y + 5,_health_count,0.3,0.3,0);
draw_text_transformed(x - 9,y + 9,_current_state,0.3,0.3,0);
draw_text_transformed(x - 9,y + 13,_alarm1,0.3,0.3,0);