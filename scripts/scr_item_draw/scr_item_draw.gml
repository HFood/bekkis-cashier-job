function scr_item_draw() //gml_Script_scr_item_draw
{
    if (grabbed == 1)
        draw_sprite_ext(sprite_index, image_index, x, y, (image_xscale + 0.1), (image_yscale + 0.1), image_angle, image_blend, image_alpha)
    else
        draw_self()
}

