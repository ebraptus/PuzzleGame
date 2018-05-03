/// @description Insert description here
// You can write your code in this editor

if(surface_exists(light_surface)){
	surface_set_target(light_surface);
	draw_clear(c_black);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprShadow, -1, oPlayer.x, oPlayer.y, 1, 1, 0, c_black, 1);
	gpu_set_blendmode(bm_normal);
		
	surface_reset_target();
	draw_surface_ext(light_surface, 0, 0, 1, 1, 0, c_white, 1);
}else{ 
	light_surface = surface_create(room_width, room_height);
}