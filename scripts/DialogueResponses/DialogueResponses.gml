/// @arg Response

switch(argument0)
{
	case 0: break;
	case 1: NewTextBox("You tell him good morning!", 1); break;
	case 2: NewTextBox("You're mad that he doesn't love God. Kill him?", 1, ["3:Yes!", "0:No."]); break;
	case 3: NewTextBox("I'll make sure your kittens have a good home...",0); break;
	default: break;	
}