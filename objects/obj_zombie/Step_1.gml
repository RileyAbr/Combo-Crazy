if (hp <= 0)
{
	audio_play_sound(sound4,50,false)
	with(instance_create_layer(x,y,layer,obj_zombie_corpse))
	{
		
		hsp = lengthdir_x(2,1);
		vsp = lengthdir_y(2,1)-1;
		if sign(hsp != 0) image_xscale = sign(hsp);
	
	}
	
	instance_destroy();
}