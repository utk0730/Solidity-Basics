// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringContract{
    
    function concatFunc(string memory _a, string memory _b) public pure returns(string memory){
        return string(abi.encodePacked(_a,' ' ,_b)); // abi.encodePacked returns bytes so typecasting here in string;
    }
}