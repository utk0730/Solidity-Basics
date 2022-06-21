// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
    Function behaviour is of 3 types: 
        1. view :   ready only
                    state varibales can be accessed unlike pure function 


        2. pure :   function should be pure if,
                    no state varibales are being
                    accessed inside function.


        3. payable :  We will discuss this later 

 */
contract FirstFunction{

    string name = "utkarsh";

    function viewFunction () public view returns(string memory){
        return name;
    }

    function pureFunction(int _a,int _b) public pure returns(int) {
        return _a + _b;
    }
}