// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GunModes(modes){
	keyMode = keyboard_check_pressed(ord("V")) || gamepad_button_check_pressed(0, gp_shoulderl);
	if keyMode && state == "active" {
		fireRate[0] = 10;
		if mode < modes-1 {
			mode++;
		} else mode = 0;
	}
}