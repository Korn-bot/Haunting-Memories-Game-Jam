
// Increase ittator at frame count
	my_itterator++;
// --------------------------------
	
// When we hit our itteration timer , lets add some text to our text
	if(my_itterator == my_Itteration_timer){
		
	// reset the itterator
		my_itterator = 0;
		
	// increase the string position
		pos_int_string++;
		
	// Add to my_text_draw string a chracter at time based on position
		var char_to_add = string_char_at(my_text,pos_int_string);
		add_to_my_text(char_to_add);
		
	// play audio clip----------------------------------------------------
		// get a sound randomly based on number of sounds and sound group name
		var talk_sound = asset_get_index(pick_random_talk_noise(4,"sud_ghost_talk_"));
		// see if audio is playing or not , and if its a space or not 
		if((audio_is_playing(talk_sound)==false) && char_to_add != " "){
	
			audio_play_sound(
				talk_sound,
				global.Master_Volume, 
				false
			);
		}//--------------------------------------------------------------
	
	}
// -------------------------------------------------------------------------------------

// Cheack if we have our String is Empty and if So either Delete Self or Progress to next text ?

	// cheach if my pos in string is more then the leng of it
	if(pos_int_string < my_text_length){
		// stop the conting
		//pos_int_string = 0;
		// destroy self ( could add a timer)
		alarm[0] = my_linger_timer;
	}

// --------------------------------------------------------------------------------------