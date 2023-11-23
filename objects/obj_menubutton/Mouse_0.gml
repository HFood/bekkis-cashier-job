if (txt == "music_vol1" || txt == "sfx_vol1" || txt == "master_vol1" || txt == "curssize1")
{
    if (wait2 > 0)
        wait2--
    else if (wait > 0)
        wait--
    else
    {
        scr_menubutton_click()
        wait = 4
    }
}
