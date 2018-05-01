if (global.executedCD == 0)
{
	var porty = camera_get_view_y(global.port);
	
	global.menu = instance_create_depth(495,porty+95, -10, obj_popupmenu);
	global.menu.text = "Found A Sword";

	for (i = 0; i<2; i++)
	{
		switch(i)
		{
			case 0: 
				global.but1 = instance_create_depth(350, porty+300, -1000, obj_button);
				alarm[0] = 5*room_speed;
				break;
			case 1:
				global.but2 = instance_create_depth(630, porty+300, -1000, obj_button);
				alarm[0] = 5*room_speed;
				break;
		}
	}
	
	global.executedCD = 1;
}