draw_sprite(sprite_index, image_index, x, y)
if (image_speed == 0)
{
    if (touched == 1 && pulling == 0)
        image_index = ((clamp(obj_cursor.y, 240, 370) - 240) / 26)
    else
        image_index = 0
}
