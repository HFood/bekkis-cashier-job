if place_meeting(x, y, obj_kitchen_hitbox)
{
    if (cursimg < 2)
        cursimg += 0.05
    else
        cursimg = 0
    draw_sprite_ext(spr_cursorwalk, cursimg, (mouse_x * 2), (mouse_y * 2), (1 * global.curssize), (1 * global.curssize), image_angle, image_blend, image_alpha)
}
else if place_meeting(x, y, obj_cloud)
{
    if (cursimg < 2)
        cursimg += 0.05
    else
        cursimg = 0
    draw_sprite_ext(spr_cursorwrite, cursimg, (mouse_x * 2), (mouse_y * 2), (1 * global.curssize), (1 * global.curssize), image_angle, image_blend, image_alpha)
}
else
{
    draw_sprite_ext(spr_cursorreal, 0, (mouse_x * 2), (mouse_y * 2), (2 * global.curssize), (2 * global.curssize), cursrot, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, (mouse_x * 2), (mouse_y * 2), (1 * global.curssize), (1 * global.curssize), image_angle, image_blend, image_alpha)
}
if (cursrot < 360)
    cursrot += 3
else
    cursrot = 0
if (room != rm_menu || (!(place_meeting(x, y, obj_menubutton))))
    curstxt = ""
