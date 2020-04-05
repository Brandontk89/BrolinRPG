var _obj;
if (instance_exists(o_text)) _obj = o_text_queued; else _obj = o_text;
with (instance_create_layer(0,0,"Instances",_obj))
{
	message = argument[0];
	if (instance_exists(other)) originInstance = other.id else originInstance = noone;
	if (argument_count > 1) background = argument[1]; else background = 1;
}

with (o_player)
{
	if (state != PlayerStateLocked)
	{
		lastState = state;
		state = PlayerStateLocked;
	}
}