// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract mappingTest {

    uint256 myBalance; //0

    struct Customer{
        address addr; //customer address
        uint256 balance; //customer balance
    }

    Customer[] public listOfCustomer;

    mapping (address => uint256) public addressToBalance;

    function store(uint256 _balance) public {
        myBalance = _balance;
    }

    function retrieve()public view returns(uint256){
        return myBalance;
    }
        
    function addCustomer(address _address, uint256 _balance) public{
        listOfCustomer.push(Customer(_address, _balance));
        addressToBalance[_address] = _balance;
    } 

    function getBalance (address _address) public view returns (uint256){
        return addressToBalance[_address];
    }

}
