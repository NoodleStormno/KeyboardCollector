draw_self()

if (!ds_list_empty(Password)){
	draw_set_colour(c_red);
	draw_set_font(Font1)
	draw_text(x+3, y+4, ds_list_find_value(Password, 0));
}
