//add gravity
vsp = vsp + grv;

// horizontal collision
// while is loop over and over again untill not true
if (place_meeting(x+hsp,y,o_walls)) //place_meeting checks if there is a collision between two objects
{
	while (!place_meeting(x+sign(hsp),y,o_walls)) // ! is not
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

// vertical collision
if (place_meeting(x,y+vsp,o_walls)) //place_meeting checks if there is a collision between two objects
{
	while (!place_meeting(x,y+sign(vsp),o_walls)) // ! is not
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;


// facing the right direction 
if (hsp != 0) image_xscale = sign(hsp);