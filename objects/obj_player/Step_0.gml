// Moving around
var wallLayer = layer_tilemap_get_id("BackgroundTiles");
var newX = x;
var newY = y;
if (keyboard_check(vk_right)) newX = x + 4;
if (keyboard_check(vk_left)) newX = x - 4;
if (keyboard_check(vk_down)) newY = y + 4;
if (keyboard_check(vk_up)) newY = y - 4;

var nextXTile = tilemap_get_at_pixel(wallLayer, newX, y);
var nextXTileIdx = tile_get_index(nextXTile);
var nextYTile = tilemap_get_at_pixel(wallLayer, x, newY);
var nextYTileIdx = tile_get_index(nextYTile);
if nextXTileIdx == 4 x = newX;
if nextYTileIdx == 4 y = newY;


//Shoot
if(mouse_check_button(mb_left)) && (cooldown < 1) {
  if ammo > 0 {
  	instance_create_layer(x, y, "BulletsLayer", obj_bullet);
    ammo = ammo - 1;
    audio_sound_pitch(snd_bullet, random_range(0.8, 1.2));
    audio_play_sound(snd_bullet, 5, false);
    if (ammo < 0) ammo = 0;
	  cooldown = 8;
  } else {
    audio_sound_pitch(snd_laser_dryfire, 1);
    if !audio_is_playing(snd_laser_dryfire) audio_play_sound(snd_laser_dryfire, 5, false);
  }

}

cooldown = cooldown - 1;
