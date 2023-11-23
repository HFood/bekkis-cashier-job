scale = 1
lang_bread = load_string_json(global.lang, string("ing_bread"))
lang_cheese = load_string_json(global.lang, string("ing_cheese"))
lang_ham = load_string_json(global.lang, string("ing_ham"))
lang_lettuce = load_string_json(global.lang, string("ing_lettuce"))
lang_bacon = load_string_json(global.lang, string("ing_bacon"))
lang_cucumber = load_string_json(global.lang, string("ing_cucumber"))
lang_fish = load_string_json(global.lang, string("ing_fish"))
lang_pepper = load_string_json(global.lang, string("ing_pepper"))
lang_ketchup = load_string_json(global.lang, string("ing_ketchup"))
lang_mayo = load_string_json(global.lang, string("ing_mayo"))
lang_toast = load_string_json(global.lang, string("ing_toast"))
txt1 = ""
txt2 = ""
if (instance_number(obj_hintboard) > 1)
    instance_destroy()
