if (other.color != -4 && other.color != dad.color)
{
}
else
{
    if (!audio_is_playing(other.poursfx))
        other.poursfx = audio_play_sound(sfx_pour, 1, true)
    else
        audio_sound_pitch(other.poursfx, (0.5 + (other.perc / 100)))
    perc = ((((other.y - 30) - 336) / 234) * 100)
    other.color = dad.color
    other.perc += 1
    sety = (other.y - 30)
    depth = (other.depth + 1)
}
