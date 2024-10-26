// GAME STATE MACHINE
	switch(global.game_state){
	
		// WHEN GAME BREAKS
		default :
		break;	
		
		// IN MAINMENU
		case "MAIN_MENU" :
		break;
		
		// IN MAINMENU::OPTIONS
		case "MAIN_MENU_OPTIONS" :
		break;
		
		// IN GAME::PLAYING
		case "GAME_PLAYING" :
		
			// Display only correct layers
			LAYER_SET_VISIBILITY_TEXT(false);
			LAYER_SET_VISIBILITY_GAME(true);
			LAYER_SET_VISIBILITY_GAME_OPTIONS(false);
			
	
		break;
		
		// IN GAME::TEXT_DISPLAY	
		case "GAME_TEXT_DISPLAY" :
			// Display only correct layers
			LAYER_SET_VISIBILITY_TEXT(true);
			LAYER_SET_VISIBILITY_GAME(false);
			LAYER_SET_VISIBILITY_GAME_OPTIONS(false);
			
		break;
		
		// IN GAME::CUTSCENE
		case "GAME_CUTSCENE" :
		break;
		
		// IN GAME::OPTONS
		case "GAME_OPTIONS" :
		break;
	}