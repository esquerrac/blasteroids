if (keyboard_check(vk_left)){
	image_angle+=4;
}
if (keyboard_check(vk_right)){
	image_angle-=4;
}
if (keyboard_check(vk_up)){
	motion_add(image_angle, .05);
}
if (keyboard_check(vk_down)){
	motion_add(image_angle, -.05);
}

if (keyboard_check_pressed(vk_space)){
	var bullet = instance_create_layer(x, y, "Instances", objectLaser );
	bullet.direction = image_angle;
}

move_wrap(true, true, sprite_width/2);