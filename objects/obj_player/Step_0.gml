//Control Configuration
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
jumpKey = keyboard_check_pressed(vk_up);
attackKey = keyboard_check_pressed(vk_space);

//hsp = move * moveSpd;
vsp = vsp + grav;

//Movement Logic
if (!attacking and hitstun == 0 and hp > 0)
{
		if(!rightKey or !leftKey)
		{
			hsp = 0 * moveSpd	
		}

		if(rightKey and !leftKey)
		{
			hsp = 1 * moveSpd
			moveDir = 1
		}

		if(leftKey and !rightKey)
		{
			hsp = -1 * moveSpd
			moveDir = -1
}


//Jump logic
if(place_meeting(x,y+1,obj_wall)) && (jumpKey)
{
	vsp = -10	
}

//If the player is colliding with a platform to the left or right
	
if(place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting (x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0
}
x = x + hsp;

//Gravity Logic
if(place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting (x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0
}
y = y + vsp;

}

//Attack Logic
if(!attacking and hitstun == 0 and hp > 0)
{
	if(attackKey and combo == 0 and vsp = 0)
	{
		{
			if(attackMove1 == 1)
			{
			instance_create_depth(x+64*moveDir,y,0,obj_sword1_hitbox)
			attacking = 20
			audio_play_sound(sound1,100,false)
			}
		
			if(attackMove1 == 2)
			{
			instance_create_depth(x+64*moveDir,y,0,obj_sword2_hitbox)
			attacking = 20
			audio_play_sound(sound3,100,false)
			}
		
			combo = 1
			comboTimer = 40
		}
	}
	
	
	else if(attackKey and combo == 1 and vsp = 0)
	{
		if(attackMove2 == 1)
		{
		instance_create_depth(x+64*moveDir,y,0,obj_sword1_hitbox)
		attacking = 20
		audio_play_sound(sound1,100,false)
		}
		
		if(attackMove2 == 2)
		{
		instance_create_depth(x+64*moveDir,y,0,obj_sword2_hitbox)
		attacking = 20
		audio_play_sound(sound3,100,false)
		}
		
		combo = 2
		comboTimer = 40
	}
	
	
	else if(attackKey and combo == 2 and vsp = 0)
	{
		dash = 10
		
		if(attackMove3 == 1)
		{
		instance_create_depth(x+64*moveDir,y,0,obj_sword1_hitbox)
		attacking = 20
		audio_play_sound(sound1,100,false)
		}
		
		if(attackMove3 == 2)
		{
		instance_create_depth(x+64*moveDir,y,0,obj_sword2_hitbox)
		attacking = 20
		audio_play_sound(sound3,100,false)
		}
		
		
		combo = 3
		comboTimer = 22
		
	}
}


//Animation
if(!attacking)
{
if(!place_meeting(x,y+1,obj_wall))
{
	sprite_index = s_player_airborne
	image_speed = 0
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = s_player;
	}
	else
	{
		sprite_index = s_player;	
	}
}

}

if(attacking)
{
	if(combo = 1)
	{
		if(attackMove1 == 1)
		{
			sprite_index = s_player_sword1
			image_speed = 1
		}
	
		if(attackMove1 == 2)
		{
			sprite_index = s_player_sword2
			image_speed = 1
		}
	}
	
	else if(combo = 2)
	{
		if(attackMove2 == 1)
		{
			sprite_index = s_player_sword1
			image_speed = 1
		}
	
		if(attackMove2 == 2)
		{
			sprite_index = s_player_sword2
			image_speed = 1
		}
	}
		
	else if(combo = 3)
	{
		if(attackMove3 == 1)
		{
			sprite_index = s_player_sword1
			image_speed = 1
		}
	
		if(attackMove3 == 2)
		{
			sprite_index = s_player_sword2
			image_speed = 1
		}
	}
}

if (hsp != 0) image_xscale = sign(hsp);
