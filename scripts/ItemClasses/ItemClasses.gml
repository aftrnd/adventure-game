//Create generic item types here
//Items & Weapons
function Item() constructor {
	name = "";
	description = "";
	price = 0;
	attackPower = 1;

}

//Magic & Potions
function Potion() : Item() constructor {
	attackPower = 0;
	addHealth = 3;

}