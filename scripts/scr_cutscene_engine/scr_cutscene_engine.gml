/// 

// creates the object of Text that has a self incremeting loop before it deletes it self 
function draw_text_over_time(_text,_vector5,_draw_speed,_my_linger_timer){
	
	//Fixing Frames to seconds
	var _fixed_timer = _draw_speed * 60;
	var _fixed_my_linger_timer = _my_linger_timer * 60;
	
	// Create a object of "text spawner" with provided paramaters
	_other = instance_create_layer(10,10,"l_text_cutscene",obj_text_draw,{	
		//Passed variables
		my_text : _text,
		my_Itteration_timer : _fixed_timer,
		my_text_colour : _vector5,
		my_linger_timer : _fixed_my_linger_timer
		
		}
	);
	
}

// object specific , we expect the objecto have a " my_text_draw" var which we just pass a character too
function add_to_my_text(_char){
	self.my_text_draw += _char;
}


