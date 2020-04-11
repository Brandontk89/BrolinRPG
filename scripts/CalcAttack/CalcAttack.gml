///Use Attack Hitbox & Check for Hits
mask_index = argument0;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,p_entity,hitByAttackNow,false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		///If This Instance Has Not Yet By This Attack, Hit it!
		var hitID = hitByAttackNow[| i]; 
		if (ds_list_find_index(hitByAttack, hitID) == -1);
		{
			ds_list_add(hitByAttack, hitID);	
			with (hitID)
			{
				
				image_blend = c_red;	
								
			}
		}
	}
}

ds_list_destroy(hitByAttackNow);
mask_index = s_player;