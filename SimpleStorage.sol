// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract SimpleStorage {

    uint256 myFavoriteNumber; //0

    struct Person{
        string name;
        uint256 favNumber;
    }

    Person[] public listOfPeople;

    Person moria = Person({favNumber: 10, name: "Maryam"});
    Person abu = Person({favNumber: 32, name: "Abubakar"});
    Person abdul = Person({favNumber: 2, name: "Abdullah"});

    function store(uint256 _favNumber) public {
        myFavoriteNumber = _favNumber;
    }

    function retrieve()public view returns(uint256){
        return myFavoriteNumber;
    }
        
    function addPerson(string memory _name, uint256 _favNumber) public{
        listOfPeople.push(Person(_name, _favNumber));
    } 

}
