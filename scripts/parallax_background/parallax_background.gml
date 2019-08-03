/// @desc parallax_background(background_name, x_amount, y_amount) Takes in a background's name and parallax amount and applies an appropriate parallaxing to it
/// @arg background_name The name of the background as a string
/// @arg x_amount The amount of parallaxing to perform in the x direction
/// @arg y_amount The amount of parallaxing to perform in the y direction

if (instance_exists(obj_camera)) {
	with (obj_camera) {
		// parallax backgrounds
		background = layer_get_id(argument0);

		if (layer_exists(background)) {
			layer_x(background, (x - half_cam_width) / argument1);
			layer_y(background, (y - half_cam_height) / argument2);
		}
	}
}