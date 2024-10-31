/// @description Insert description here
// You can write your code in this editor
if (global.phealth < global.phealthmax)
{
	global.phealth += 1;
	
	instance_destroy();
	
	effect_create_above(ef_ring, x, y, 1, c_fuchsia);
}
