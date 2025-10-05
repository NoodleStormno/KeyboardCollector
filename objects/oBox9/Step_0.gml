if place_meeting(x,y,oPlayer) {
	array_push(global.drawQueue, item);
	audio_play_sound(aPickup,1,false);
	
	instance_create_layer(x+8,y+16,"Instances",oFlag)
	room_goto(RoomEnd)
	instance_destroy(self)
}