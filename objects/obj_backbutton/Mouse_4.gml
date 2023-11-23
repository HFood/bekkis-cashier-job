if (obj_menu.section != "menu")
{
    scr_sound(sfx_step)
    obj_menu.section = "menu"
    var lay = layer_get_id("Backgrounds_1")
    var bg = layer_background_get_id(lay)
    layer_background_sprite(bg, spr_bg_menu1)
}
