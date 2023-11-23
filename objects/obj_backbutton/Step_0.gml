if (obj_menu.section == "menu")
{
    x = -1000
    y = -1000
}
else
{
    if keyboard_check_pressed(vk_escape)
    {
        scr_sound(sfx_menu1)
        obj_menu.section = "menu"
        var lay = layer_get_id("Backgrounds_1")
        var bg = layer_background_get_id(lay)
        layer_background_sprite(bg, spr_bg_menu1)
    }
    x = startx
    y = starty
}
