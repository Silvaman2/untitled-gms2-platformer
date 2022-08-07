// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimation(move){
	switch(move) {
		case 1:
		image_speed = 3;
		image_index = clamp(image_index,11,19);
		if image_index == 19 image_index = 11;
		break;
		case -1:
		image_speed = 3;
		image_index = clamp(image_index,1,9);
		if image_index == 9 image_index = 1;
		break;
		case 0:
		image_speed = 0;
		image_index = 10 * clamp(facing,0,1);
	}
	if place_empty(x,y+1,Steppable) || state == "dash" image_index = 7 + (10*clamp(facing,0,1));
}