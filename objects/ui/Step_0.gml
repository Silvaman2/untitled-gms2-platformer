keyDebug = keyboard_check_pressed(ord("P"));
keyReset = keyboard_check_pressed(ord("R"));
keyGameEnd = keyboard_check_pressed(vk_escape);
switch(debug) {
case 0:
if keyDebug debug = 1;
break;
default:
if keyDebug debug = 0;
}
if keyReset {
	audio_stop_all();
	room_restart();
}
if keyGameEnd game_end();









//camera follow
if instance_exists(follow)
{
	Xto = follow.x;
	Yto = follow.y;
}
x += (Xto-x)/25;
y += (Yto-y)/25;
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);