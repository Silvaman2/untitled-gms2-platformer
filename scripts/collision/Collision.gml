// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Collision(){
	if (place_meeting(x+hsp,y,Owall)) {
		while (place_empty(x+sign(hsp),y,Owall)) {
		x += sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;
	if (place_meeting(x,y+vsp,Owall)) {
		while (place_empty(x,y+sign(vsp),Owall)) {
		y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
}