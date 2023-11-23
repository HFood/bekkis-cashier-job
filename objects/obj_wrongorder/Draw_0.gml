draw_set_color(c_red)
draw_set_alpha(image_alpha)
draw_text_transformed(x, y, txt, 1, 1, 0)
if (image_alpha > 0.1)
{
    image_alpha -= 0.02
    y -= 2
}
else
    instance_destroy()
draw_set_alpha(1)
