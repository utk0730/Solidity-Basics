// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressExample{
    address public owner; // contract owner
    address payable public receiver;

    address public owner1 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    address payable public receiver1 = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    function getBalance() public returns (uint,uint){
        owner = msg.sender;
        return (owner.balance , receiver1.balance) ;
    }

    function transferMoney() public returns (string memory) {

        /*
            🔴 : Diff between transfer and send methods :🔴
            Send - returns a boolean value corrsponding to transfer status success/fail
                -  need to handle logic explicity using the boolean value

            Transfer - if transfer money fails, auto revert to previous state in evm
           
            *** 🔴 BOTH THEM METHODS ARE NOT RECOMMENDED  🔴 *** 
        */

        receiver1.transfer(5);
        bool transferStatus = receiver1.send(10);
        if(transferStatus){
            return 'Transfer success';
        }else{
            return 'Transfer fails';
        }

        //owner1.transfer(10); // not allowed as, this address is not of payable type
    }


}