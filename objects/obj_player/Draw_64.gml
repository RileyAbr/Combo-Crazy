display_set_gui_size(obj_camera.guiX,obj_camera.guiY);

draw_set_font(guiFont);
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(76,16,"HP: "+string(hp));

draw_set_color(c_red);
draw_text(75,15,"HP: "+string(hp));

if(hp <= 0)
{
	draw_set_halign(fa_center)
	draw_set_font(guiFont)	
	draw_set_color(c_black)
	draw_text(obj_camera.guiX/2+1,obj_camera.guiY/2+1,"GAME OVER \nPress 'R' to Retry");
	
	draw_set_halign(fa_center)
	draw_set_font(guiFont)	
	draw_set_color(c_red)
	draw_text(obj_camera.guiX/2,obj_camera.guiY/2,"GAME OVER \nPress 'R' to Retry");
}