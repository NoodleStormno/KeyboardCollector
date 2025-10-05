if place_meeting(x,y,oPlayer) {
	oPlayer.targetFlag=self
	sprite_index=sFlagA
	
	with(object_index){
		if (id != other.id){
			sprite_index=sFlagB
		}
	}
}