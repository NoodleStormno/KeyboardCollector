//draw_text(10,10,"GUI size: "+string(display_get_gui_width())+" x "+string(display_get_gui_height())+ "scale"+string(scale_x));
var _cw = browser_width;   // 浏览器窗口可视宽（CSS 像素）
var _ch = browser_height;  // 浏览器窗口可视高
display_set_gui_size(_cw, _ch);

scale_x = _cw / 320;
scale_y = _ch / 220;

draw_set_color(c_gray);
//draw_rectangle(5,180,315,800,false)

draw_set_font(Font1);
draw_set_color(c_black);


for (var i = 0; i < array_length(global.drawQueue); ++i){
	var it = global.drawQueue[i];
	
	//show_debug_message(1)
	draw_sprite_ext(it.s,1,it.x*scale_x,(it.y+40)*scale_y,scale_x,scale_y,0,c_white,1);
}



//if (lastKey==37) {draw_text(20,15,"Left")}
//else if (lastKey==38) {draw_text(20,15,"Up")}
//else if (lastKey==39) {draw_text(20,15,"Right")}
//else draw_text(20,15,chr(lastKey))