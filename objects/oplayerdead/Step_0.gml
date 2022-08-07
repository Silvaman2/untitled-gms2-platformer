vsp += grv;
	if (place_meeting(x+hsp,y,Owall)) {
		while (place_empty(x+sign(hsp),y,Owall)) {
			x += sign(hsp);
		}
		while (place_meeting(x,y+1,Owall)) x -= sign(hsp);
		hsp = 0;
	}
	x += hsp;
	if (place_meeting(x,y+vsp,Owall)) {
		while (place_empty(x,y+sign(vsp),Owall)) {
		y += sign(vsp);
		}
		hsp = 0;
		vsp = 0;
	}
	y += vsp;
