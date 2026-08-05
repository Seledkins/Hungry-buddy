var _id, _stat;
_id = ds_map_find_value(async_load, "id");
if (_id == game_over_msg)
{
    if (ds_map_find_value(async_load, "status"))
    {
		room_goto(room);
    }
}