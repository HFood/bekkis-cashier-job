if collision_point(mouse_x, mouse_y, id, 1, 0)
    peliscus = 0.1
else
    peliscus = 0
draw_sprite_ext(sprite_index, image_index, x, y, (image_xscale + peliscus), (image_yscale + peliscus), image_angle, image_blend, image_alpha)
