if (sprite_index != s_playerattack_slash)
{
	sprite_index = s_playerattack_slash;
	localFrame = 0;
	image_index = 0;
}



/// Update Sprite
PlayerAnimateSprite();

if (animationEnd)
{
	state = PlayerStateFree;
	animationEnd = false;
}