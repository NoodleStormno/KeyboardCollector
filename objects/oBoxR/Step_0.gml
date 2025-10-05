//第一个收集的，所以单独写，不需要移动旗子
var item={
	s:sprite_index
	,x:72
	,y:164
	,n:name
}

if place_meeting(x,y,oPlayer) {
	oPlayer.CanR = true;
	array_push(global.drawQueue, item);
	audio_play_sound(aPickup,1,false);
	
	instance_destroy(self)
}

