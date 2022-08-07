lifeTime--;
if place_meeting(x+speed*facing,y,Owall) {
	stuck = 1;
}
switch(stuck) {
	case 0:
	if place_meeting(x,y,Oenemy) {
	SCdamage();
	instance_destroy();
	}
	break;
	case 1:
	speed = 0;
	wallX = instance_nearest(x,y,Owall).x - 56*facing;
	wallY = instance_nearest(x,y,Owall).y;
	x = wallX;
	for (i = 0; i < instance_number(Oicycle2);i++){
	if instance_find(Oicycle2,i).lifeTime < lifeTime instance_destroy(instance_find(Oicycle2,i));
	}
}
if lifeTime <= 0 instance_destroy();