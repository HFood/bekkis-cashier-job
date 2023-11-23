draw_set_color(c_white)
draw_set_halign(fa_center)
if (image_index >= 39)
{
    if (gog == 0)
    {
        instance_activate_object(obj_gameoverbutton)
        audio_sound_gain(global.music, 0, 0)
        audio_sound_gain(global.music, 1, 3000)
        global.music = audio_play_sound(mu_breeze, 1, true)
        audio_sound_set_track_position(global.music, 0)
        gog = 1
    }
    draw_text_transformed(800, 220, go1, 3, 3, 0)
}
