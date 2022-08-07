// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStates(move){
	switch(dash[0]) {
	case 0:
	if move != 0 {
	facing = move;
	state = "moving";
	} else state = "idle";
	break;
	default:
	state = "dash";
	}
}