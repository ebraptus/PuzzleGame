/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;

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

newx = x + hsp;
if(!place_meeting(newx, y, oWall)){
	x = newx;
}