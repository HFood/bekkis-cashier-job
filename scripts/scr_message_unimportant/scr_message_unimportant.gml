function scr_message_unimportant(argument0, argument1) //gml_Script_scr_message_unimportant
{
    ds_list_add(obj_game.talkprompt, argument0)
    ds_list_add(obj_game.faceprompt, argument1)
}

