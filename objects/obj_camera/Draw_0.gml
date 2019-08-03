/// @description zooms out camera if needed
// You can write your code in this editor
if (zoomed_out) {
	camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0]) * 1.25, camera_get_view_height(view_camera[0]) * 1.25);
	staticBackgroundID = layer_background_get_id(static_background);
	layer_background_xscale(staticBackgroundID, 1.25);
	layer_background_yscale(staticBackgroundID, 1.25);
	zoomed_out = false;
}