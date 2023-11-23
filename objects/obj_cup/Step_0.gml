scr_item_step()
if (place_meeting(x, y, obj_foodicon) && grabbed && mouse_check_button_pressed(mb_right))
{
    var _ing = instance_place(x, y, obj_foodicon)
    if (_ing.food == "trash")
        instance_destroy()
}
if ((!(place_meeting(x, y, obj_fluid))) && audio_is_playing(poursfx))
    audio_stop_sound(poursfx)
