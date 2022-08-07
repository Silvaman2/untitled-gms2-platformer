// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GunGUI(){
	if instance_exists(Oplayer) {
	if point_distance(x,y,Oplayer.x,Oplayer.y) <= 100 && Oplayer.holding == noone && state = "dropped" draw_sprite(SPbutton_X,0,x,y-53);
	}
}