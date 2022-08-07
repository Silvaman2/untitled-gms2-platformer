if debug
	{
		if instance_exists(Oplayer) {
			with(Oplayer) {
				draw_set_font(debugFont);
				draw_set_color(c_black);
				draw_text(1767,17,"Player");
				
				//draw_text(1767,500,)
				
				
				
				
				
				
				
				
				draw_text(1767,57,"hsp:"+string(hsp));
				draw_text(1767,97,"vsp:"+string(vsp));
				draw_text(1767,117,"hp:"+string(hp[0]));
				draw_text(1757,137,"bulletCount:"+string(instance_number(Obullet)));
				switch(holding) {
					case noone:
						draw_text(1727,167,"holding:noone");
					break;
					default:
						with(holding) {
							draw_text(1727,167,"holding:"+object_get_name(object_index));
							draw_text(1727,187,"state:"+state);
							draw_text(1727,207,"mode:"+string(mode))
						}
					break;
				}
				draw_text(1767,237,"hsp:"+string(Oak47.hsp));
				draw_text(1767,257,"vsp:"+string(Oak47.vsp));
				draw_text(1767,277,"grv:"+string(Oak47.grv));
			}
		}
		if instance_exists(Oenemy) {
		draw_text(1767,307,"hp:"+string(Oenemy.hp[0]));
		draw_text(1767,327,"freeze:"+string(Oenemy.freeze[0]));
		draw_text(1767,347,"walksp:"+string(Oenemy.walksp[0]));
		}
}
