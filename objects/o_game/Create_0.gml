// @desc Initialise & Globals
randomize();

global.gamePaused = false;

global.iCamera = instance_create_layer(0,0,layer,o_camera);

room_goto(ROOM_START);