/// @description Keyboard Input & Collision Check
// You can write your code in this editor

Move_Left = keyboard_check(ord("A"));
Move_Right = keyboard_check(ord("D"));
Move_Down = keyboard_check(ord("S"));
Move_Jump = keyboard_check(ord("W"));

script_execute(PlayerState)