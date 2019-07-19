if (room != roomGame){
	exit;
}
var newSpeed = speed+1;

if (choose(0,1)==0){
	var xx=choose(0, room_width)
	var yy= irandom_range(0, room_height)
	instance_create_layer(xx, yy, "Instances", objectRock)
}else{
	var xx= irandom_range(0, room_width)
	var yy = choose(0, room_height)
	var newRock = instance_create_layer(xx, yy, "Instances", objectRock)
	newRock.speed=newSpeed;
}

alarm[0] = room_speed*1;
	