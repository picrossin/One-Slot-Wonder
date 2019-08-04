/// @arg In Sets if it fades in or out

ts = instance_create_depth(0, 0, depth - 1000, obj_transition);
ts.start = true;
ts.in = argument0;
return ts;