// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCdamage(){
if place_meeting(x,y,Oenemy) with(instance_place(x,y,Oenemy)) {
hp[0] -= other.damage;
knockback[0] = -other.knockback*sign(x-other.x);
if variable_instance_exists(other, "freeze") {
if walksp[0] >= other.freeze walksp[0] -= other.freeze; else walksp[0] = 0;
freeze[0] += 3*sign(other.freeze);
}
flash[2] = other.flash;
flash[0] = flash[1];
return 1;
}
}