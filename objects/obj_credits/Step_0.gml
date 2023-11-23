if (pause < 450)
    pause++
else
{
    if (phase == 5)
    {
        if (!instance_exists(obj_fade))
        {
            audio_sound_gain(mu_computerpop, 0, 4000)
            with (instance_create_depth(0, 0, -1, obj_fade))
            {
                spd = 0.004
                spec = 8
            }
        }
    }
    else
        phase++
    pause = 0
}
