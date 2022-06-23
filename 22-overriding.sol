// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract InheritanceExampleOne{
    string public name ;
    constructor(string memory _name){
        name = _name;
    }

    function logMe() public virtual pure returns(string memory) {
        return "Level 1 function";
    }

}

contract InheritanceExampleTwo is InheritanceExampleOne("utkarsh"){
    
    function logMe() public override pure returns(string memory){
        return "Level 2 function";
    }
    
    function levelTwoFn() public pure returns(string memory) {
        return "Level 2 function";
    }

    function getValueFromLevel1 () public pure returns(string memory){
        return super.logMe();

    }
  

}