// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// used to restrict state variable modification

// constant -  it must be initialized with a value during declaration.

// immutable - it must be initialised eiter during declaration
//          -   if not initialised during dclaration, 
//              then it must be initialised inside contstructor function
//          - immutable type doesnt work with dynamic sizes like string, bytes

uint constant number=100;

contract UB{
    string public constant title = "hello world";
    uint immutable num=100;
    uint immutable num2;
    //string immutable name="utkarsh"; // 🔴 error here
    constructor (){
        num2=10;
    }
}