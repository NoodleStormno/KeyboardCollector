window_set_size(1280, 880);
xsp = 0;
ysp = 0;

audioHasPlay = false;



//左右移动
CanLeft = false;
CanRight = false;

//跳跃及高度
CanJumpLevel = 0;
jumpSpeed = -2;
Gra = 0.1;
jumpTime = 0;
maxJumptime = 0;

//
CanR = false;
CanX = false;

//死亡变量
IsDie = false;

targetFlag = noone;

//重开函数
function Restart(){
	instance_activate_all()
	
	x=targetFlag.x
	y=targetFlag.y
	
	IsDie=false
	audio_resume_all()
}

//死亡函数
function Die(){
	instance_activate_all()
	IsDie=true
	sprite_index=sPlayerDie
	audio_pause_all()
}





