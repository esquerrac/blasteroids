

instance_destroy();

with(other){
	instance_destroy();
	if(sprite_index == spriteRockLarge){
		score+=10;
		repeat(2){
			var newRock = instance_create_layer(x, y, "Instances", objectRock);
			newRock.sprite_index = spriteRockMedium;
			newRock.speed = speed+1;
		}
	}else if(sprite_index == spriteRockMedium){
		score+=20;
		repeat(2){
			var newRock = instance_create_layer(x, y, "Instances", objectRock);
			newRock.sprite_index = spriteRockSmall;
			newRock.speed = speed+1;
		}
	}else if (sprite_index == spriteRockSmall){
		score +=30;
	}
	audio_play_sound(rockDead, 1, false);
	repeat(50)
	instance_create_layer(x, y, "Instances", objectDebris);
}