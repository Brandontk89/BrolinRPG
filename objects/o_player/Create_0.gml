state = PlayerStateFree;
stateAttack = AttackSlash;
hitByAttack = -1;
lastState = state

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.5;
speedRoll = 2.0;
distanceRoll = 48;
distanceBonk = 30;
distanceBonkHeight = 12;
speedBonk = 1.5;
z = 0;

spriteRoll = s_player_roll;
spriteRun = s_player_run;
spriteIdle = s_player;
localFrame = 0;

