// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiveEtherExmaples{
    address payable receiverAddress = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);// 3rd account

    function recieveMoneyInContractAddress() public payable returns(uint) {
       return address(this).balance;
    }

    function transferEtherFromContract() public payable {
        receiverAddress.transfer(20 ether);
    }

    function getBalanceOfContract() public view returns(uint){
        return address(this).balance;
    }
}