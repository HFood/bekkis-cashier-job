draw_set_color(c_black)
if collision_point(mouse_x, mouse_y, id, 1, 0)
    peliscus = 0.1
else
    peliscus = 0
draw_sprite_ext(sprite_index, image_index, (x * 2), (y * 2), (2 + peliscus), (2 + peliscus), image_angle, image_blend, image_alpha)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (sprite_index != spr_menubutton2 && sprite_index != spr_days && sprite_index != spr_tutor)
    draw_text_transformed((x * 2), (y * 2), load_string_json(global.lang, txt), (2 + peliscus), (2 + peliscus), 0)
