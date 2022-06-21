// SPDX-License-Identifier: MIT
// 1. 👆🏻 It is not just a comment line , rather the way to declare license type in sol files.
// If in case you want your code to be not open source, use UNLICENSED


// 2. 👇🏻 Different way to use solidity compiler versions
// pragma solidity 0.8.0; // static version
// pragma solidity >= 0.4.0 > 0.8.0; // range version
pragma solidity ^0.8.0; // any version >= specified version

// 3. 👇🏻 Contract syntax
contract FirstContract{
    string name;
    string public name2; // public variables are automaticaly created as function returning these values
    uint age = 10;

    constructor (string memory _name, uint _age){
        name = _name;
        age = _age;
    }
}


