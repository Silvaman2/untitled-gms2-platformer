// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerDash(){
if dash[0] != 0 {
	hsp = 20*facing;
	vsp = 0;
}
if keyDash && dashCooldown[0] == 0 && state == "moving" {
	dash[0] = dash[1];
	dashCooldown[0] = dashCooldown[1];
}
}