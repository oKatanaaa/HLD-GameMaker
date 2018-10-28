_txt_w = string_width(text_array_[1]);
_txt_h = string_height(text_array_[1]);
arr_size_ = array_length_1d(text_array_)
scr_create_textbox(s_text_box, 0, 0, 14 + _txt_w, 14+_txt_h * arr_size_);
scr_draw_txt_in_box(text_array_);