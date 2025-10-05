global.drawQueue=[];
lastKey = 0

// 设计基准
BASE_W  = 320;          // 你当初做 UI 时用的逻辑宽
BASE_H  = 180;          // 逻辑高

// 当前 GUI 层实际像素
gui_w   = browser_width;
gui_h   = browser_height;

// 缩放系数（等比）
scale_x = gui_w / BASE_W;
scale_y = gui_h / BASE_H;
