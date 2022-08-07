draw_self();

switch(freeze[2]) {
	case 0:
if flash[0] != 0 {
	flash[0]--;
	shader_set(flash[2]);
	draw_self();
	shader_reset();
}
break;
default:
shader_set(Freeze1);
if flash[0] != 0 && flash[2] != Freeze 
{
	flash[0]--;
	shader_set(flash[2]);
}
draw_self();
shader_reset();
}