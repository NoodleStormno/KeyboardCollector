var cam = view_camera[0];
var cam_x = screen_x * screen_w;
var cam_y = screen_y * screen_h;

// 玩家存在才处理
if (instance_exists(target)) {

    var new_screen_x = floor(target.x / screen_w);
    var new_screen_y = floor(target.y / screen_h);
	
	if (new_screen_x != screen_x || new_screen_y != screen_y) {

        screen_x = new_screen_x;
        screen_y = new_screen_y;

        // 设置相机位置
        camera_set_view_pos(cam, screen_x * screen_w, screen_y * screen_h);
    }
	
	
}