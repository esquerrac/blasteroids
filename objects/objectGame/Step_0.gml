if (keyboard_check_pressed(vk_enter)){
	if(room==roomStart){
		room_goto(roomGame);
	}else if (room==roomWin || room==roomLose){
		game_restart();
	}
}
if (lives <=0){
	room_goto(roomLose)
	audio_stop_sound(AsteroidsShort);
	audio_play_sound(shipLose, 2, true);
}
if (score>=2000){
	room_goto(roomWin)
	audio_stop_sound(AsteroidsShort);
	audio_play_sound(shipWin, 2, true);
}