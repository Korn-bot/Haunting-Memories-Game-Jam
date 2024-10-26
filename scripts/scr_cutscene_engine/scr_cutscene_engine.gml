/// 

// creates the object of Text that has a self incremeting loop before it deletes it self 
function draw_text_over_time(_text,_clour,_draw_speed,_my_linger_timer){
	
	//Fixing Frames to seconds
	var _fixed_timer = _draw_speed * 60;
	var _fixed_my_linger_timer = _my_linger_timer * 60;
	
	// Create a object of "text spawner" with provided paramaters
	_other = instance_create_layer(10,10,"l_text_cutscene",obj_text_draw,{	
		//Passed variables
		my_text : _text,
		my_Itteration_timer : _fixed_timer,
		my_text_colour : _clour,
		my_linger_timer : _fixed_my_linger_timer
		
		}
	);
	
}

// object specific , we expect the objecto have a " my_text_draw" var which we just pass a character too
function add_to_my_text(_char){
	self.my_text_draw += _char;
}

// for when we want a full Layer to move with the current used cammera
function layer_follow_cammera(_layer_NAME){
	// Layer
	var current_text_layer = layer_get_id(_layer_NAME);	// grab the layer to move
	// Camera properties
	var view_camera_x = camera_get_view_x(view_camera[0]);	// grab cameras X
	var view_camera_y = camera_get_view_y(view_camera[0]);	// grab cameras Y
	// Apply the variables
	layer_x(current_text_layer,view_camera_x);
	layer_y(current_text_layer,view_camera_y);
}
