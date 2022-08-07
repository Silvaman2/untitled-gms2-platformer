draw_self();

if flash[0] != 0 {
	flash[0]--;
	shader_set(Hit);
	draw_self();
	shader_reset();
}