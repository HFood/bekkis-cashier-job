function draw_pie(argument0, argument1, argument2, argument3, argument4, argument5, argument6) //gml_Script_draw_pie
{
    if (argument2 > 0)
    {
        var numberofsections = 60
        var sizeofsection = (360 / numberofsections)
        var val = ((argument2 / argument3) * numberofsections)
        if (val > 1)
        {
            draw_set_colour(argument4)
            draw_set_alpha(argument6)
            draw_primitive_begin(6)
            draw_vertex(argument0, argument1)
            for (var i = 0; i <= val; i++)
            {
                var len = ((i * sizeofsection) + 90)
                var tx = lengthdir_x(argument5, len)
                var ty = lengthdir_y(argument5, len)
                draw_vertex((argument0 + tx), (argument1 + ty))
            }
            draw_primitive_end()
        }
        draw_set_alpha(1)
    }
}

