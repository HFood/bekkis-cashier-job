draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (digit == "x")
    draw_set_color(c_red)
else
    draw_set_color(c_black)
draw_text_transformed(x, y, digit, (1 + (image_index * 0.1)), (1 - (image_index * 0.1)), 0)
