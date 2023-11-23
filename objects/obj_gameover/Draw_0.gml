draw_set_color(c_black)
draw_rectangle(0, 0, 1600, 1200, false)
draw_sprite_ext(spr_gameover_bg, 0, 400, 300, campos, campos, 0, c_white, dark)
if (campos > 1)
{
    campos -= 0.02
    dark += 0.004
}
draw_sprite_ext(sprite_index, image_index, 400, 300, campos, campos, image_angle, image_blend, image_alpha)
