// 屏幕一屏的大小
screen_w = camera_get_view_width(view_camera[0]);
screen_h = camera_get_view_height(view_camera[0]);


// 初始屏幕坐标
screen_x = 0;
screen_y = 0;

// 设置相机大小
var cam = view_camera[0];
camera_set_view_size(cam, screen_w, screen_h);
camera_set_view_pos(cam, screen_x * screen_w, screen_y * screen_h);

// 找到玩家对象
target = oPlayer;

