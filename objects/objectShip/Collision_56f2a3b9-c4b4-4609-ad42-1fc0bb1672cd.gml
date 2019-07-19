score-=50;
lives -=1;

with(objectGame){
	if (lives>0){
	alarm[1] = room_speed;
	}
}
audio_play_sound(shipDead, 1, false);

instance_destroy();
repeat(200){
	instance_create_layer(x, y, "Instances", objectDebris);
}