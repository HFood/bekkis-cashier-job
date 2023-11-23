draw_sprite(sprite_index, image_index, x, y)
if (image_speed == 0)
{
    if (obj_toaster.timer > 0)
        image_index = 8
    else if (touched == 1)
        image_index = ((clamp(obj_cursor.y, 310, 440) - 310) / 16.25)
    else
        image_index = 0
}
