// camera variables
cam = view_camera[0];
follow = obj_player;
cam_speed = 18;
lock_to_room = true;
cam_width = camera_get_view_width(cam);
cam_height = camera_get_view_height(cam);
half_cam_width = cam_width / 2;
half_cam_height = cam_height / 2;

// parallax variables
static_background = layer_get_id("Earth");
slow_background = layer_get_id("Background_mountain_back");
medium_background = layer_get_id("Background_mountain_middle");
quick_background = layer_get_id("Background_mountain_front");
zoomed_out = false;

// screen shake variables
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;

randomize();

image_ind = 0;