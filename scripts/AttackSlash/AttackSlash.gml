
/// Attack Just Started
if (sprite_index != s_playerattack_slash)
{
	/// Set Up Correct Animation
	sprite_index = s_playerattack_slash;
	localFrame = 0;
	image_index = 0;
	
	///Clear Hit List
	if (!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
	ds_list_clear(hitByAttack);		

}

CalcAttack(s_PlayerAttack_SlashHB);

/// Update Sprite
PlayerAnimateSprite();

if (animationEnd)
{
	state = PlayerStateFree;
	animationEnd = false;
}