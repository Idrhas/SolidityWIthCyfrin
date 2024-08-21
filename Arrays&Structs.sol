// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    struct Animal {
        uint256 myFavNumber;
        string name;
    }

    Animal[] public listOfAnimals;

    // Manually add three animals
    constructor() {
        addAnimal("Lion", 1);
        addAnimal("Tiger", 2);
        addAnimal("Bear", 3);
    }

    function addAnimal(string memory _name, uint256 _myFavNumber) public {
        Animal memory newAnimal = Animal(_myFavNumber, _name);
        listOfAnimals.push(newAnimal);
    }
}
