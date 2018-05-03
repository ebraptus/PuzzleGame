/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;

#region Keyboard Check
if(keyboard_check(ord("W"))){
	vsp -= spd;	
}
if(keyboard_check(ord("S"))){
	vsp += spd;	
}
if(keyboard_check(ord("A"))){
	hsp -= spd;	
}
if(keyboard_check(ord("D"))){
	hsp += spd;	
}
#endregion
#region X Move
newx = x + hsp;
if(!place_meeting(newx, y, oWall)){
	x = newx;
}else{
	while(!place_meeting(x + sign(hsp), y, oWall)){
		x += sign(hsp);
	}
}
#endregion
#region Y Move
newy = y + vsp;
if(!place_meeting(x, newy, oWall)){
	y = newy;
}else{
	while(!place_meeting(x, y + sign(vsp), oWall)){
		y += sign(vsp);
	}
}
#endregion