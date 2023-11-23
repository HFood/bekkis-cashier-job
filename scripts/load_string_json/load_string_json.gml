function load_string_json(argument0, argument1) //gml_Script_load_string_json
{
    var LANGUAGE = argument0
    var KEYWORD = argument1
    var JsonFile = file_text_open_read("lang.txt")
    var Data = ""
    while (!file_text_eof(JsonFile))
    {
        Data += file_text_read_string(JsonFile)
        file_text_readln(JsonFile)
    }
    file_text_close(JsonFile)
    var temp_map = json_decode(Data)
    var lang_map = ds_map_find_value(temp_map, LANGUAGE)
    if (!is_string(KEYWORD))
        KEYWORD = string(KEYWORD)
    var output_string = ds_map_find_value(lang_map, KEYWORD)
    ds_map_destroy(temp_map)
    ds_map_destroy(lang_map)
    return output_string;
}

