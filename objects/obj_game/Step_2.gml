global.cash = max(global.cash, 0)
if (room == rm_menu)
{
    _x += ((clamp((0 + ((mouse_x - 400) / 60)), -300, 300) - _x) * 0.1)
    _y += ((clamp((0 + ((mouse_y - 300) / 60)), -200, 200) - _y) * 0.1)
    camera_set_view_pos(view_camera[0], _x, _y)
}
else
    camera_set_view_pos(view_camera[0], 0, 0)
