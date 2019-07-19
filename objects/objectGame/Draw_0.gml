if (room == roomStart){
	draw_set_halign(fa_center);
	var c = c_lime;
	draw_text_transformed_color(
		room_width/2,
		200, 
		"Blasteroids",
		5,
		5,
		0,
		c,
		c,
		c,
		c,
		1,
	)
	draw_text(
	room_width/2, 400,
	@"Score 2,000 Points to defeat the Asteroid Menace!

Up: Move Forward
Down: Move Backward
Left/Right: Rotate Ship
Space: Blaster"
	)
	draw_text_transformed_color(
		room_width/2,
		600, 
		"PRESS ENTER TO START",
		3,
		3,
		0,
		c,
		c,
		c,
		c,
		1,
	)
	draw_set_halign(fa_left);
}else if (room==roomWin){
	draw_set_halign(fa_center);
	var c = c_aqua;
	draw_text_transformed_color(
		room_width/2,
		200, 
		"You Defeated the Asteroid Menace!",
		2,
		2,
		0,
		c,
		c,
		c,
		c,
		1,
	)
	draw_text_transformed_color(
		room_width/2,
		600, 
		"PRESS ENTER TO PLAY AGAIN",
		1,
		1,
		0,
		c,
		c,
		c,
		c,
		1,
	)
	draw_set_halign(fa_left);
}else if(room==roomLose){
	draw_set_halign(fa_center);
	var c = c_red;
	draw_text_transformed_color(
		room_width/2,
		200, 
		"YOU DIED",
		3,
		3,
		0,
		c,
		c,
		c,
		c,
		1,
	)
	draw_text_transformed_color(
		room_width/2,
		600, 
		"PRESS ENTER TO TRY AGAIN",
		1,
		1,
		0,
		c,
		c,
		c,
		c,
		1,
	)
	draw_set_halign(fa_left);
}else if (room ==roomGame){
	draw_text(20, 20, "Score: " +string(score))
	draw_text(20, 40, "Lives: " +string(lives))
}