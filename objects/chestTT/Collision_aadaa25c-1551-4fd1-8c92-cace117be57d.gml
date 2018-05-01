
//if collision happens then the colliChestTTDrayce will become true
//and will execute CreateMenu once.

if (cond == 0) && (global.executedCD == 0)
{
	if (global.executedCD == 0)
	{
		script_execute(CreateMenu());
		Drayce.disable = 1;
	}
}
 