// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InheritanceExampleOne{

    function levelOneFn() public pure returns(string memory) {
        return "Level 1 function";
    }

}

contract InheritanceExampleTwo{

    string public name ;
    constructor(string memory _name){
        name = _name;
    }

    function levelTwoFn() public pure returns(string memory) {
        return "Level 2 function";
    }

}

contract InheritanceExampleThree is InheritanceExampleOne, InheritanceExampleTwo("utkarsh") {
    function levelThreeFn() public pure returns(string memory) {
        return "Level 3 function";
    }

    function getValueFromLevel1 () public pure returns(string memory){
        return levelOneFn();
    }
    function getValueFromLevel2 () public pure returns(string memory){
        return levelTwoFn();
    }

}