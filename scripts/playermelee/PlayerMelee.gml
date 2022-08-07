// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMelee(){
	if keyMelee && meleeCooldown[0] <= 0 {
		meleeCooldown[0] = meleeCooldown[1];
		instance_create_layer(x,y,"Weapons",Oaxe);
	}
}