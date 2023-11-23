phase = 0
if (global.day != 0)
    instance_destroy()
else
{
    scr_message(localize("tut0"), spr_hud_coach_talk)
    scr_message_unimportant(localize("tut1"), spr_hud_coach_talk)
}
