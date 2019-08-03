/// @desc screen_shake(magnitude, frames)
/// @arg Magnitude sets the strength of the shake (radius in pixels)
/// @arg Frames sets the length of the shake in frames

if (instance_exists(obj_camera)) {
	with (obj_camera) {
		if (argument0 > shake_remain) {
			shake_magnitude = argument0;
			shake_remain = argument0;
			shake_length = argument1;
		}
	}
}