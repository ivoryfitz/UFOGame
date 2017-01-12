var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);

draw_set_font(font_ammo);


//var ammoWidth = string_width(ammoString);
draw_set_color(c_white);
draw_set_halign(fa_center);
//draw_sprite_ext(spr_bullet, -1, cx + cw / 2 - ammoWidth / 2 - 10, cy + 10, 1, 1, 90, c_white, 1);
var gameNameY = cy + textVerticalSpacing;
draw_text(cx + cw / 2, gameNameY, gameNameString);



//Controls
draw_set_halign(fa_left);
//Draw below gamename with a little more space
var controlsY = gameNameY + string_height(gameNameString) + textVerticalSpacing * 2;
draw_text(cx + 10, controlsY, controlsString);

//Collect Ammo
//Draw below controls string
var ammoY = controlsY + string_height(controlsString) + textVerticalSpacing * 2;
draw_text(cx + 10, ammoY, collectAmmoString);
draw_sprite_ext(spr_ammo_box, -1, cx + (10 + string_width(collectAmmoString) + sprite_get_width(spr_ammo_box) / 2), ammoY + string_height(collectAmmoString) / 2, 0.8, 0.8, 0, c_white, 1);

//How to start game
draw_set_halign(fa_center);
draw_set_alpha((sin(current_time / 300) + 1) / 2);
draw_text(cx + cw / 2, ch - (10 + string_height(howToStartString)), howToStartString);
draw_set_alpha(1);

//Who be the enemies?
var enemiesY = ammoY + string_height(collectAmmoString) + textVerticalSpacing * 2;
draw_set_halign(fa_left);
draw_text(cx + 10, enemiesY, enemiesString);
draw_sprite_ext(spr_enemy, -1, cx + (10 + string_width(enemiesString) + sprite_get_width(spr_enemy) / 2), enemiesY + string_height(enemiesString) / 2, 0.8, 0.8, 0, c_white, 1);

//Who Am I?
var whoamiY = enemiesY + string_height(enemiesString) + textVerticalSpacing * 2;
draw_text(cx + 10, whoamiY, youString);
draw_sprite_ext(spr_player, -1, cx + (10 + string_width(youString) + sprite_get_width(spr_player) / 2), whoamiY + string_height(youString) / 2, 0.8, 0.8, 0, c_white, 1);

//What's the goal?
var thegoalY = whoamiY + string_height(youString) + textVerticalSpacing * 2;
draw_text(cx + 10, thegoalY, winString);
draw_sprite_ext(spr_goal, -1, cx + (10 + string_width(winString) + sprite_get_width(spr_goal) / 2), thegoalY + string_height(winString) / 2, 0.8, 0.8, 0, c_white, 1);