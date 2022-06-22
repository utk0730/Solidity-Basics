// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FuncModifier{
    string public ownerName = "utkarsh";
    address contractOwner;

    constructor(){
        contractOwner = msg.sender;
    }

    // Method 1
    function changeOwnerName(string memory newOwner) public {
        require(contractOwner  == msg.sender , "You are not the contract owner");
        ownerName = newOwner;
    }

    // Method 2 - using function modifiers. Function modifiers make code more reusbale
    modifier onlyContractOwner{
         require( contractOwner == msg.sender , "You are not the contract owner");
         _;
    }
    function changeOwnerName2(string memory newOwner) public onlyContractOwner {
        ownerName = newOwner;
    }

    // arguments can also be passed to function modifiers
    modifier  onlyContractOwnerWithParams(bool _hasRight){
         require( contractOwner == msg.sender , "You are not the contract owner");
         _;
         require(_hasRight, "User has no right of this ");
         _;
    }
    function changeOwnerName3(string memory newOwner) public onlyContractOwnerWithParams(true) {
        ownerName = newOwner;
    }
}