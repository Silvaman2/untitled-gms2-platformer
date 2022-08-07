function PlayerPickUp(weapon){
	switch(holding) {
		case noone:
			if point_distance(x,y,weapon.x,weapon.y) < 100 && keyInteract && weapon.state == "dropped" {
				weapon.fireRate[0] = 14;
				weapon.state = "active";
				holding = weapon;
			}
		break;
		default:
		if keyDrop {
			with(weapon) while (place_meeting(x,y+1,Owall)) x -= other.facing;
			weapon.state = "dropped";
			holding = noone;
		}
		if keyThrow {
			weapon.state = "thrown";
			with(holding) {
				hsp = 25*other.facing;
				rotate[0] = rotate[1]*(-other.facing);
				image_index = 1+(2*clamp(other.facing,0,1))+4*mode;
			}
			holding = noone;
		}
		break;
	}
	
}