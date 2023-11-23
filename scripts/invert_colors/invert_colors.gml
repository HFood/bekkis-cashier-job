function invert_colors() //gml_Script_invert_colors
{
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_zero)
    draw_rectangle_colour(0, 0, 1600, 1200, c_white, c_white, c_white, c_white, 0)
    gpu_set_blendmode(bm_normal)
}

