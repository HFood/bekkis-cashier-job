if (juice == 1)
{
    if (dad.grabbed == 1)
        draw_sprite_part_ext(spr_cup_fluid, 0, 0, (194 - (dad.perc * 1.94)), sprite_width, 194, ((x - (sprite_width / 2)) - 7), (((y + (sprite_height / 2)) - (dad.perc * 2)) - 15), 1.1, 1.1, dad.color, 1)
    else
        draw_sprite_part_ext(spr_cup_fluid, 0, 0, (194 - (dad.perc * 1.94)), sprite_width, 194, (x - (sprite_width / 2)), (((y + (sprite_height / 2)) - (dad.perc * 2)) - 3), 1, 1, dad.color, 1)
}
else if (dad.grabbed == 1)
    draw_sprite_ext(sprite_index, image_index, x, y, (image_xscale + 0.1), (image_yscale + 0.1), image_angle, image_blend, image_alpha)
else
    draw_self()
if (dad.hasice == 1)
{
    if (dad.grabbed == 1)
        draw_sprite_ext(spr_cup_ice, 0, x, y, (image_xscale + 0.1), (image_yscale + 0.1), image_angle, image_blend, image_alpha)
    else
        draw_sprite_ext(spr_cup_ice, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
