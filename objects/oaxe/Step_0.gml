if !instance_exists(Oplayer) instance_destroy();
x = Oplayer.x;
y = Oplayer.y;

if image_index < 7 image_index += (7*clamp(Oplayer.facing,0,1)) else image_index += (7*clamp(Oplayer.facing,-1,0));

active = image_index == 10 || image_index == 3;
if active SCdamage();

if image_index == 6 || image_index == 13 || Oplayer.holding != noone  {
	instance_destroy()
}

