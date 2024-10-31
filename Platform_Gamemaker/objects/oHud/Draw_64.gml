/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oPlayer)){
	draw_sprite(sHealthBack,1,4,9)
	draw_sprite_ext(sHealthFront,1,4,9,
	max(0,global.phealth/global.phealthmax),1,0,c_white,1);
}	
	