//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

PlayerCollision();

//Update Sprite Index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0;

//Updating Image Index
PlayerAnimateSprite();

//Attack Key Logic
if (keyAttack)
{
	state = PlayerStateAttack;
	stateAttack = AttackSlash;
}


/// Activate Key Logic
if (keyActivate)
{
	/// 1. Check for entity to Activate
	/// 2. If there is nothing, or there is something, but it has no script - Roll!
	/// 3. Otherwise, there is something and it has a script! Activate!
	/// 4. If the thing we avtivate is an NPC, make it face towards us!
	
	var _activateX = lengthdir_x(10, direction);
	var _activateY = lengthdir_y(10, direction);
	activate = instance_position(x+_activateX, y+_activateY, p_entity);
	
	if (activate == noone || activate.entityActivateScript == -1)
	{
		state = PlayerStateRoll;
		moveDistanceRemaining = distanceRoll;	
	}
	else
	{
		///Activate the Entity
		ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		
		///Make an NPC face the player
		if (activate.entityNPC)
		{
			with (activate)
			{
				direction = point_direction(x,y,other.x,other.y);
				image_index = CARDINAL_DIR
			}
		}
	}	
	
	
	
}