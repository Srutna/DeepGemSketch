key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_jump_left = keyboard_check_pressed(vk_left);
key_jump_right = keyboard_check_pressed(vk_right);
key_jump_up = keyboard_check_pressed(vk_up);
key_jump_down = keyboard_check_pressed(vk_down);

disable = 0;

image_speed = walkSpeed / 3;

//VERTICAL COLLISIONS

if (disable == 0)
{
	if (keyboard_check(ord("S"))) or (key_down)
	{
		if (place_meeting(x,y+walkSpeed,all ))
		{
			while (!place_meeting(x,y+1,all ))
			{
				y += 1;
			}
			walkSpeed = 0;
		}
		y += walkSpeed;
		sprite_index = DrayceDownWalk;
	}

	if (keyboard_check(ord("W"))) or (key_up)
	{
		if (place_meeting(x,y-walkSpeed,all ))
		{
			while (!place_meeting(x,y-1,all ))
			{
				y -= 1;
			}
			walkSpeed = 0;
		}
		y -= walkSpeed;
		sprite_index = DrayceBackWalk;
	}

	//HORIZONTAL COLLISIONS

	if (keyboard_check(ord("A"))) or (key_left)
	{
		if (place_meeting(x-walkSpeed,y,all ))
		{
			while (!place_meeting(x-1,y,all))
			{
				x -= 1;
			}
			walkSpeed = 0;
		}
		x -= walkSpeed;
		sprite_index = DrayceLeftWalk;
	}

	if (keyboard_check(ord("D"))) or (key_right)
	{
		if (place_meeting(x+walkSpeed,y,all ))
		{
			while (!place_meeting(x+1,y,all))
			{
				x += 1;
			}
			walkSpeed = 0;
		}
		x += walkSpeed;
		sprite_index = DrayceRightWalk;
	}

	if (x <= 0) or (x >= 2048) x = xprevious;

	if (y <= 0) or (y = 2000) y = yprevious;

	if (keyboard_check(vk_nokey))
	{
		image_speed = 1;
		walkSpeed = 5;
		spr_index = sprite_index;
	
		if (sprite_get_name(spr_index) == "DrayceDownWalk")
			sprite_index = DrayceDownBreath;
		else if (sprite_get_name(spr_index) == "DrayceBackWalk")
			sprite_index = DrayceBackBreath;
		else if (sprite_get_name(spr_index) == "DrayceLeftWalk")
			sprite_index = DrayceLeftBreath;
		else if (sprite_get_name(spr_index) == "DrayceRightWalk")
			sprite_index = DrayceRightBreath;
	} 
}
