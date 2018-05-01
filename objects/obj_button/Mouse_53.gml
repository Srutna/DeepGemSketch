if (mouse_check_button_pressed(mb_left))
{
	var clicked_id = instance_position(mouse_x,mouse_y,all);
		
	if (clicked_id == global.but2)			//yes
	{
		chestTT.image_speed = 1;
		cond = 1;
		
		Drayce.disable = 0;
		
		event_perform(ev_destroy,0);
		instance_destroy(global.menu);
	}
	else if (clicked_id == global.but1)			//no
	{
		show_debug_message(global.but1);
		global.executedCD = 0;
		
		Drayce.disable = 0;
		
		event_perform(ev_destroy,0);
		instance_destroy(global.menu);
	}
}
