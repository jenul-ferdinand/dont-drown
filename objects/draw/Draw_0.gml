if (ds_exists(ds_depthgrid, ds_type_grid))
	{
	//---------------ADD ALL INSTANCES TO THE GRID
	var depthgrid = ds_depthgrid;
	var inst_num = instance_number(depthsorter);
	
	// RESIZE THE GRID
	ds_grid_resize(depthgrid, 2, inst_num);
	
	var yy = 0;
	
	with (depthsorter)
		{
		// ADD OURSELVES TO THE GRID
		depthgrid[# 0, yy] = id;
		
		// ADD OUR Y VALUE
		depthgrid[# 1, yy] = y;
		yy++;
		}
		
	ds_grid_sort(ds_depthgrid, 1, true);
	
	yy = 0; repeat (inst_num)
		{
		// DRAW THE INSTANCE
		var instanceID = ds_depthgrid[# 0, yy];
		with (instanceID)
			{
			draw_self();
			}		
		yy++
		}
	
	ds_grid_clear(ds_depthgrid, 0);
	}