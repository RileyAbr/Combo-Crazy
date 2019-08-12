if(hurting >= 0)
{
	if(hurting % 2 != 0) vis = 0
	else vis = 1
}

if(vis) draw_self()

if(hp <= 0) 
{
	image_blend = make_color_hsv(150,150,c_blue)
	draw_self()
}