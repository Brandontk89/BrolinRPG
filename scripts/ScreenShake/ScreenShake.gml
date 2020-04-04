/// ScreenShake (Magnitude, Framges)
/// Magnitude sets the strength of the shake (distance range)
/// Frames sets the length of the shake in frames (60 = 1 second)

with (global.iCamera)
{
	if (argument0 > shakeRemain)
	{
		shakeMagnitude = argument0;
		shakeRemain = shakeMagnitude;
		shakeLength = argument1;		
	}	
}