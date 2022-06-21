// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
    1. public -     accessible throughout contract 
                    where it is declared also by any 
                    other external contract.
            
    2. private -    accessible only within the contract
                    where it has been declared.
            
    3. internal -   🔴default type of solidity variable is internal🔴
                -   it is accessible throughout the contract where
                    it has been declared , and also throughout any contract
                    inherting the varible declaring contract
                
    4. external -   external type is used only for functions
                    external type is accessible from anywhere
                    it can also be accessed from contract where it has been declared
 */
contract VisibilityModifiers{
    string name; //default internal
    uint public age;
    address private sender; 

    function acccessExternalFunction(string memory _candidateName) public view{
       this.FunctionExternal(_candidateName);
    }
    function FunctionExternal(string calldata _candidateName) pure external returns(string memory) {
        return _candidateName;

    }
}