var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_set_font(font_ammo);
var ammoString = "Ammo: " + string(ammo);
var ammoWidth = string_width(ammoString);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_sprite_ext(spr_bullet, -1, cx + cw / 2 - ammoWidth / 2 - 10, cy + 10, 1, 1, 90, c_white, 1);
draw_text(cx + cw / 2, cy + 10, ammoString);