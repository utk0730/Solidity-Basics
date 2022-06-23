// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
    Fallback function :
        -   it is self executed when someone is trying to call a function in contract that doesn't exist.
        -   by adding a payable keyword it can also receive ethers
        -   it can recieves data
        -   it can have a return

    Receive function : 
        - same as fallback function except that it can only accept ethers and no data

 */


contract FallBackReceiveExample{
    fallback(bytes calldata) external payable returns(bytes memory){
        return "hello receive";
    }
    receive() external payable {
       
    }
    address public contractOwner;
    constructor(){
        contractOwner = msg.sender;//0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

}


contract TransferEtherAccount{
     address public contractOwner;
      constructor(){
        contractOwner = msg.sender;
    }
    function receiveEtherInThisContract() public payable {
        // this function will enable this contract to recieve ether
    }

    function sendEtherFromThisContract(address sendTo) public payable {
        payable(sendTo).transfer(1 ether);
    }

    //🔴 call method is the right way of sending ether to an address
    function sendEtherFromThisContractUsingCall(address sendTo) public payable {
        (bool success,) = payable(sendTo).call{ value: 1 ether, gas : 10000}("pass data here");
        require(success, "TransFer failed");
    }
    //🔴 hardcoding gas limit in call will make it behave similar as send,transfer method, so it is not recommended

}