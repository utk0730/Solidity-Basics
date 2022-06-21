// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVariable{
   address public owner = msg.sender; // address using blockchain
   bytes public msgData = msg.data; // data send over blockchain
   uint public blockNumber = block.number; // block number
   bytes32 public blockHash = blockhash(2); // block hash
   address public miner = block.coinbase; // miner address
   uint public gasLimit = block.gaslimit; // gas limit
   uint public blockTime = block.timestamp; // timestamp
   uint public gasLeft = gasleft(); // gas left
   address public transactionOriginAddress = tx.origin; // helpful in cases like -  contract is calling another contracy

}