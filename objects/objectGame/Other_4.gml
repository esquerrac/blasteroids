if (room==roomStart){
	audio_play_sound(asteroidTitle, 2, true);
}else if (room==roomGame){
	audio_stop_sound(asteroidTitle);
	if (audio_is_playing(AsteroidsShort)){
		}else{
			audio_play_sound(AsteroidsShort, 2, true)
		}
	repeat(8){
	var xx = choose(
	irandom_range(0, room_width*.3),
	irandom_range(room_width*.7, room_width)
	);
	var yy = choose(
	irandom_range(0, room_height*.3),
	irandom_range(room_height*.7, room_height)
	);
	instance_create_layer(xx,yy,"Instances", objectRock)
	}
	alarm[0] = room_speed*2;
	instance_create_layer(380, 385, "Instances", objectShip);
}

