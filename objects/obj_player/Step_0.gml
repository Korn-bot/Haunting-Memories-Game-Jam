// run Player Momvnet function
	player_movment();
//------------------------------

// Check if a Locker is near by 
	if(collision_circle(self.x,self.y,40,obj_locker,true,true)){
		
		// change layer visibility
		// to only see the locker box 
		// disable player movment untill the locker is interact with again ( same button )
		// cant die while in a locker
		
		// if we have interacted with the locker_room
		if(player_interact()==true){
			show_message("Interacted with locker box");
		}
		
	}
//------------------------------