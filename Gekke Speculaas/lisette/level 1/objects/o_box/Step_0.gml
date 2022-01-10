/// @description Insert description here
// You can write your code in this editor
if (touch == true){
	show_debug_message(y);
	show_debug_message(x);
	if (x >= 600){
		x -= lengthdir_x(2,image_angle);
	}
	if (x <= 600){
		if (y <= 960){
			show_debug_message("yo");
			y += 2;
		}
	}
}