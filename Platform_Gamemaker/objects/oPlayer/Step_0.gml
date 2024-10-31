/// @description Insert description here
// You can write your code in this editor

keyDamage = keyboard_check_pressed(vk_space);

ysp+=0.1
xsp=0




if keyboard_check(vk_left)
{
	xsp=-2
	
}	

if keyboard_check(vk_right)
{
	xsp=+2
	
}	
if place_meeting(x,y+1,oSolid)
{
	ysp=0
	if keyboard_check(vk_up)
	{
		ysp=-3
		
	}
	
}	


//Spike and flag collisions
if place_meeting(x,y,oFlag)
{
	room_goto_next()
}

if place_meeting(x,y,oSpike)
{
	room_restart()
}
if place_meeting(x,y,oSprite)
{
	ysp=-10
}	
// Aplicar daño solo cuando se presiona la tecla
if (keyDamage) {
    if (global.phealth > 0) { // Asegúrate de que la salud sea positiva
        global.phealth -= 50; 
    }    
}

if(global.phealth >100)
{
	global.phealth = 100
}	

move_and_collide(xsp,ysp,oSolid)
