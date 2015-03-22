Taw_Jarhead
Breaching script v2
4/12/2014
v2 changelog
-changed color of actions
-added ability to set shaped charge
-added ability to lock doors so you will be forced to breach
-allowed for user to designate a key to place a charge
-cleaned up files


this is a script i made for breaching doors in arma3. 


USAGE:

	place a trigger in game with this in the on ACT: null = [] execvm "breach\breach1.sqf"; (activate it anyway you wish)

	place another trigger in game with this in the on ACT field: house1 setVariable ['bis_disabled_Door_1',1,true]; (activate anyway you wish)

	*this locks door 1 of the house you may repeat this field and changeing the 1 to any number desired to lock any or all doors of house*
	*to lock two doors ex.... house1 setVariable ['bis_disabled_Door_1',1,true]; house1 setVariable ['bis_disabled_Door_2',1,true];*

	place game logic with this in the init field: house1=position this nearestObject 1240847

	then go up to any door and hit ctrl plus scroll with the mouse wheel and a new option will appear. you may need to do this several times to get the option
	you can also bind a key to your arma 3 custom controls USER ACTION 1 if the ctrl and mousewheel scroll is not working
	*note at this point in time you can walk away from the building and the option will remove itself from player*

	set the charge and take cover
	explosion will have a stunning affect for all AI around the given player who set the charge
	this works for all houses and or walls in arma 3 but take into consideration the charge can hurt the breachers and may damage some houses;




*credits*

	most of the code i used were from these people which i have to thank tremendously without there code this wouldent be possible
	
	code for the charges
	http://killzonekid.com/arma-scripting-tutorials-scripted-charges/
	
	code for stunning the enemy
	http://www.armaholic.com/page.php?id=21139 

	code for getting and opening the door
	http://www.armaholic.com/page.php?id=21818