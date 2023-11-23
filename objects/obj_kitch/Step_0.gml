if mouse_wheel_down()
    scroll_vsp -= 10
else if mouse_wheel_up()
    scroll_vsp += 10
if instance_exists(obj_scrollarea)
{
    if (obj_scrollarea.holding == 1)
        scroll_y += (scroll_vsp + obj_scrollarea.minusy)
    else
        scroll_y += scroll_vsp
}
else
    scroll_y += scroll_vsp
scroll_vsp -= (scroll_vsp / 15)
if (scroll_y < 0 || scroll_y > 240)
    scroll_vsp = ((-scroll_vsp) / 100)
switch global.day
{
    case 0:
    case 1:
        scroll_y = clamp(scroll_y, 0, 0)
        break
    case 2:
        scroll_y = clamp(scroll_y, 0, 20)
        break
    case 3:
    case 4:
        scroll_y = clamp(scroll_y, 0, 100)
        break
    case 5:
        scroll_y = clamp(scroll_y, 0, 180)
        break
}

