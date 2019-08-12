if (showText == 1)
{
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_font(signFont)
	draw_text(obj_camera.guiX/2+1,obj_camera.guiY/2-47,signText)
	
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_font(signFont)
	draw_text(obj_camera.guiX/2,obj_camera.guiY/2-48,signText)	
}


