if collision_point(mouse_x, mouse_y, id, 1, 0)
    peliscus = 0.1
else
    peliscus = 0
draw_set_color(c_black)
draw_sprite_ext(sprite_index, image_index, (x * 2), (y * 2), (2 + peliscus), (2 + peliscus), image_angle, image_blend, image_alpha)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
