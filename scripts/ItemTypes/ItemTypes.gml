//Create specific items here using itemClass constructors

function Sword() : Item() constructor {
	name = "Stone Sword";
	description = "What is this? Minecraft!?";
	price = 5;
	attackPower = 1;

}

function PotionHealing() : Potion() constructor {
	name = "Healing Potion";
	description = "May I get a crumb of health?";
	addHealth = 3;
	price = 5;
	attackPower = 0;

}