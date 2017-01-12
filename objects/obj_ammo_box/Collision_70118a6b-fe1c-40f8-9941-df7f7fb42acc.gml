audio_sound_pitch(snd_enemydeath, random_range(0.8, 1.2));
audio_play_sound(snd_reload, 5, false);
with(other) {
  ammo += 5;
}
instance_destroy();