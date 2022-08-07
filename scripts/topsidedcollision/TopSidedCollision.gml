// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TopSidedCollision(){
	if place_meeting(x,y+vsp,Oicycle2) && vsp > 0 && place_empty(x,y,Oicycle2) {
			while (place_empty(x,y+sign(vsp),Oicycle2)) {
				y += sign(vsp);
			}
			vsp = 0;
			return true;
	}
	return false;
}