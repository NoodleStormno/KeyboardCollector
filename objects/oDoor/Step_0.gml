if (!ds_list_empty(Password)){
	//show_debug_message(inputKey)
	var lastKey = ds_list_find_value(Password, 0)
	if (chr(inputKey)==lastKey){
		ds_list_delete(Password, 0);
	}
}

if (ds_list_empty(Password)){Open()}

