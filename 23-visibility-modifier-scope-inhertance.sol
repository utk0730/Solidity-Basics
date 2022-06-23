// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 1. public methods - Accessible to anyone
// 2. private methods - Contract itself
// 3. internal methods -  Contract + derived contracts
// 4. external methods - Only accessible from outside, not availble inside contract where it is declared or any derived contracts.


contract First{
    function firstPrivateFunc() private pure returns(string memory){
        return "First contract Public func is called";
    }

    function firstReadFromPrivateFunc() public pure returns(string memory){
        return firstPrivateFunc();
    }

    function firstExternalFunc() external pure returns(string memory){
        return "I am an external fucntion";
    }

    function firstReadFromExternalFunc() public pure returns(string memory){
        return firstExternalFunc(); // throws error
    }



}

contract Second is First{
    function secondPublicFunc() public pure returns(string memory){
        return "Second contract Public func is called";
    }
    function readFirstPublicFunction() public pure returns(string memory){
        return firstPrivateFunc(); // throws error
    }
    function readFirstExternalFunction() public pure returns(string memory){
        return firstExternalFunc(); // throws error
    }

}


// First firstContractAddress = First(0x.........)

contract ExternalContract{

    function readExternalFunction() public pure returns(string memory){
        // firstContractAddress.firstExternalFunc();
        return firstExternalFunc();
    }
}