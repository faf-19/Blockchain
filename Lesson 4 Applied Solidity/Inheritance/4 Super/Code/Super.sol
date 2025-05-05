pragma solidity 0.8.20;

import "./Hero.sol";

contract Warrior is Hero(200) {
    function attack(Enemy enemy) public override {
        enemy.takeAttack(Hero.AttackTypes.Brawl);
        super.attack(enemy); // Call base Hero logic (e.g., reduce energy)
    }
}

contract Mage is Hero(50) {
    function attack(Enemy enemy) public override {
        enemy.takeAttack(Hero.AttackTypes.Spell);
        super.attack(enemy); // Call base Hero logic (e.g., reduce energy)
    }
}
