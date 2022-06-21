// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVariable{
   address public owner = msg.sender;
   bytes public msgData = msg.data;
   uint public blockNumber = block.number;
   bytes32 public blockHash = blockhash(2);
   address public miner = block.coinbase;
   uint public gasLimit = block.gaslimit;
   uint public blockTime = block.timestamp;
   uint public gasLeft = gasleft();
   address public transactionOriginAddress = tx.origin;

}