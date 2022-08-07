keyLeft = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || -gamepad_axis_value(0, gp_axislh) > 0.45;
keyRight = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || -gamepad_axis_value(0, gp_axislh) < -0.45;
keyJump = keyboard_check(ord("Z")) || gamepad_button_check(0, gp_face1);
keyDash = keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0, gp_face2);
keyInteract = keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, gp_face3);
keyDrop = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_face4);
keyThrow = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_shoulderr);
keyMelee = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_face4);


if( knockback < 0) knockback += 0.5; else if (knockback > 0) knockback -= 0.5;


hp[0] = clamp(hp[0],0,hp[1]);

var move = keyRight - keyLeft;

PlayerStates(move);

if holding == noone PlayerMelee();
movesp[0] = movesp[1];
if instance_exists(Oaxe) && movesp[0] == movesp[1] movesp[0] = movesp[0]/1.5;



if state != "dash" hsp = movesp[0]*move + knockback;

DMcooldown[0] = max(0,DMcooldown[0]-1);
meleeCooldown[0] = max(0,meleeCooldown[0]-1);
dashCooldown[0] = max(0,dashCooldown[0]-1);
dash[0] = max(0,dash[0]-1);

vsp += grv;
PlayerDash();


if place_meeting(x,y+1,Owall) || TopSidedCollision() {
	vsp = keyJump * jumpH * jump;
	jump = 0;
}
if vsp < 0 && !keyJump vsp = max(vsp,jumpH/2);

PlayerAnimation(move);
Collision();
if (place_meeting(x,y+1,Owall) || place_meeting(x,y+1,Oicycle2)) && !keyJump jump = 1;



if instance_exists(Weapons) PlayerPickUp(instance_nearest(x,y,Weapons));


if hp[0] <= 0 instance_change(OplayerDead,true);



