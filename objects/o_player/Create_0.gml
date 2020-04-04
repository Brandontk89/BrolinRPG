state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.5;
speedRoll = 2.0;
distanceRoll = 48;

spriteRoll = s_player_roll;
spriteRun = s_player_run;
spriteIdle = s_player;
localFrame = 0;

