scr_item_step()
if (uprise > 0 && grabbed == 1)
{
    uprise--
    image_angle = 130
}
else
    image_angle = 0
switch food
{
    case "ketchup":
        image_index = 0
        break
    case "mayo":
        image_index = 1
        break
}

if (place_meeting(x, y, obj_ingredient) && grabbed && mouse_check_button_pressed(mb_right))
{
    var _ing = instance_place(x, y, obj_ingredient)
    if ((_ing.food == "bread" || _ing.food == "toast") && ds_list_size(_ing.tower) < 14)
    {
        uprise = 10
        scr_sound(sfx_bottle)
        audio_sound_pitch(sfx_bottle, (0.6 + (ds_list_size(_ing.tower) * 0.04)))
        with (_ing)
            ds_list_add(tower, other.food)
    }
}
