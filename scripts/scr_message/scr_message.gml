function scr_message(argument0, argument1) //gml_Script_scr_message
{
    obj_game.talkprompt_x = 800
    ds_list_delete(obj_game.talkprompt, 0)
    ds_list_delete(obj_game.faceprompt, 0)
    ds_list_add(obj_game.talkprompt, argument0)
    ds_list_add(obj_game.faceprompt, argument1)
}

