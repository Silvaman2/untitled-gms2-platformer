// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Gun(){
	keyShoot = keyboard_check(ord("X")) || gamepad_button_check(0, gp_face3);
switch(state) {
	case "active":
		if instance_exists(Oplayer) {
			hsp = 0;
			vsp = 0;
			x = Oplayer.x+20*Oplayer.facing;
			y = Oplayer.y;
			image_index = 2*clamp(Oplayer.facing,0,1)+4*mode;
			fireRate[0] = max(0, fireRate[0]-1);
			recoil[0] = max(0, recoil[0]-1);
			if keyShoot && fireRate[0] <= 0 && place_empty(x+minShootDist[mode]*Oplayer.facing,y,Owall) {
				fireRate[0] = fireRate[mode+1];
				recoil[0] = recoil[mode+1];
				if sfx != noone audio_play_sound(sfx,1,0);
				for (i = 0; i < bulletCount; i++) {
					with(instance_create_layer(x+bulletPlacement[0]*Oplayer.facing,y+bulletPlacement[1],"Bullet",bullet[mode])) {
						direction = 180*clamp(Oplayer.facing,-1,0) + irandom_range(other.BspreadMin[other.mode],other.BspreadMax[other.mode]);
						speed = 30;
					}
				}
			}
			x -= lengthdir_x(recoil[0],180*clamp(Oplayer.facing,-1,0));
		} else state = "dropped";
	break;
	case "dropped":
		image_angle = 0;
		image_index = 1+4*mode;
		hsp = 0;
		vsp += grv;
		
		Collision();
	break;
	default:
		image_angle += rotate[0];
			if (place_meeting(x+sign(hsp),y,Owall)) {
				image_angle = 0;
				while (place_meeting(x,y+1,Owall)) x -= sign(hsp);
				hsp = 0;
				state = "dropped";
			}
		if SCdamage() {
		state = "dropped";
		}
		x += hsp;
	break;
}
}