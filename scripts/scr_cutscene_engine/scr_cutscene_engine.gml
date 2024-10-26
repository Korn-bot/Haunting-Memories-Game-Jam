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

// BASE GAME INSTANCE LOGIC ---------------------------------------------------------------------------
function LAYER_CONTROLER() constructor{
	
	// Get all the layers ( switches per room so the names have to be consistant )
		// ART SECTION
			room_background_layer = layer_get_id("Background");
			room_background_tile_layer = layer_get_id("l_background");
			room_background_enviroment_tile_layer = layer_get_id("l_enviroment");
		// ASSETS & OBJECTS
			room_instances_layer = layer_get_id("Instances");		
		// TEXT AND CUTSCNES
			room_text_layer = layer_get_id("l_text_cutscene");	
			room_text_tiles_layer = layer_get_id("l_text_tiles");	
}
	
	// List of usefull function to manage base room layers
	function LAYER_SET_VISIBILITY_TEXT(_visibility){
		layer_set_visible(global.LAYER_CONTROLER.room_text_layer,_visibility);
		layer_set_visible(global.LAYER_CONTROLER.room_text_tiles_layer,_visibility);
	}
	function LAYER_SET_VISIBILITY_GAME(_visibility){
		layer_set_visible(global.LAYER_CONTROLER.room_background_layer,_visibility);
		layer_set_visible(global.LAYER_CONTROLER.room_background_tile_layer,_visibility);
		layer_set_visible(global.LAYER_CONTROLER.room_background_enviroment_tile_layer,_visibility);
	}
	function LAYER_SET_VISIBILITY_GAME_OPTIONS(_visibility){
		// NOT YET MADE
	}
