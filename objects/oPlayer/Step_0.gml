
//移动
ysp += Gra
xsp = 0


if (keyboard_check(vk_left) && CanLeft)
{
        xsp = -1
		image_xscale=-1
}

if (keyboard_check(vk_right) && CanRight)
{
        xsp = +1
		image_xscale=1
}

if place_meeting(x, y+1, oSolid)
{
		jumpTime=0
		sprite_index=sPlayerWalk
        ysp = 0
}

if (keyboard_check_pressed(vk_up) && jumpTime<maxJumptime)
{
		jumpTime ++
		audio_play_sound(aJump,1,false)
		ysp = jumpSpeed 
		sprite_index=sPlayerJump
}


//开始移动，没死才动
if (!IsDie){
	
	move_and_collide(xsp, ysp, oSolid)
	
	}



if (xsp == 0) {image_speed=0}
else {image_speed=1}//移动的时候播放动画

//找最近的门
var nearestDoor = instance_nearest(x, y, oDoor);

//其他按键
if keyboard_check_pressed(vk_anykey) {
	if (IsDie) {
		oPlayer.Restart()
	}
	
	var _key = keyboard_lastkey;
	var len = array_length(global.drawQueue);
    for (var i = 0; i < len; i++) {
		var it = global.drawQueue[i];
        if (it.n == _key){
			
			
			oUI.lastKey = _key
			
			
			if (nearestDoor != noone && point_distance(x, y, nearestDoor.x, nearestDoor.y) <= 100){
				nearestDoor.inputKey = _key
			}
			
		}   // 找到
    }
}


