if( knockback[0] < 0) knockback[0] += 0.5; else if (knockback[0] > 0) knockback[0] -= 0.5;

hp[0] = clamp(hp[0],0,hp[1]);
switch(facing) {
case -1:
image_index = clamp(image_index,0,3);
if image_index == 3 image_index = 0;
break;
case 1:
image_index = clamp(image_index,4,7);
if image_index == 7 image_index = 4;
break;
}
walksp[0] += 0.08;
freeze[0] -= 0.2;
freeze[0] = clamp(freeze[0],0,freeze[1]);
walksp[0] = clamp(walksp[0],0,walksp[1]);
hsp = facing*walksp[0] - knockback[0];
if freeze[2] hsp = 0;
vsp += grv;
if freeze[0] == freeze[1] {
	freeze[2] = 1;
} else if freeze[0] == 0 freeze[2] = 0;


EnemyBehavior();


if hp[0] == 0 instance_change(OenemyDead,true);



