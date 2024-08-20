// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // stating our version

contract SimpleStorage{
    
    uint256 public favoriteNumber; //default is 0

    function store (uint256 _favouriteNumber) public {
        favoriteNumber = _favouriteNumber;
    }
    //A view function that can be accessed only by the current contract
    function retrieve() private view returns(uint256){
    return 7;
    }
    //A pure function that's not accessible within the current contract
    function newRetrieve() external pure returns(uint256){
        return 2;
    }
    //A view function that can be accessed from children's contracts
    function viewretrieve() internal view returns (uint256){
        return favoriteNumber;
    }


}
