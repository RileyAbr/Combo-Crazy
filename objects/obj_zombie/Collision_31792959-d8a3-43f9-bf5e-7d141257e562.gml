if(!obj_player.hurting)
{
	audio_play_sound(sound5,100,false)
	obj_player.hp -= 1
	obj_player.hurting = 150
	obj_player.hitstun = 30
}
