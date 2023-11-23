if (global.pause == 1)
{
    x = -1000
    y = -1000
}
else
{
    x = mouse_x
    y = mouse_y
}
if (room == rm_endcutscene && obj_game.mottotime == 1)
    visible = false
else
    visible = true
