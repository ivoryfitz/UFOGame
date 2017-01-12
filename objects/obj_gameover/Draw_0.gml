var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);

draw_set_font(font_ammo);
draw_set_color(c_white);
draw_set_halign(fa_center);

draw_text(cx + cw / 2, cy + ch / 2, "Game Over :(\nPress Enter to Restart\nPress 'H' for title screen");