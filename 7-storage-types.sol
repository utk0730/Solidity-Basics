// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
There are 3 storage types in solidity :
    1. Storage  : 
        -   variables declared in contract outside functions
            are called state variables and are stored in Storage.
        -   Data in the storage are written in the blockchain ,
            are available between function calls and transactions.
        -   storage data is expensive


    2. Memory   :
        -   Temporary storage
        -   Declared inside the functions, also function args are of memory storage
        -   After function execution, memory varibales are cleared 
        -   Cheaper than memory 



    3. Call data/Stack  :
        -   Temporary storage , declared inside functions
        -   Call data can't be modified inside function
        -   Mosty call data is used with external functions
        -   Cheaper than memory

 */

contract StorageTypes{
    string accountName = "utkarsh"; // state variable so storage

    function memoryVariablesContext(string memory _accountName) public pure returns (string memory){ // memory variables
        string memory accountType= "twitter"; // memory variables
        _accountName = "hello twitter"; // 🔴 modifying memory data is allowed
        return _accountName;
    }

    function callDataVariables(string calldata _accountName) external pure returns(string calldata){
        _accountName = "hello facebook"; //🔴 this is not allowed with calldata
        return _accountName;
    }



}