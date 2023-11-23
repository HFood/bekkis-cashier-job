draw_self()
if (open == 1)
    draw_sprite(spr_cashreg_hole, 0, x, y)
draw_set_color(c_black)
draw_set_halign(fa_right)
if (total == "")
    draw_text_transformed(198, 210, "0", 1, 1, 0)
else
    draw_text_transformed(198, 210, total, 1, 1, 0)
