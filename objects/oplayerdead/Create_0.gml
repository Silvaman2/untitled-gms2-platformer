image_speed = 0;
hsp = 3*-sign(instance_nearest(x,y,Oenemy).x-x);
vsp = -4;
grv = 0.5;
image_index = clamp(instance_nearest(x,y,Oenemy).x-x,0,1);