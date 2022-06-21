// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Two types of account : 
1. External account - 
    - owned by users like us 
    - have private keys linked to it
    - using these private keys we transfer money between accounts
2. Contract account - 
    - derived from external account
    - derived from external account address using which 
        contract is deployed  + latest transaction no in blockchain
 */

 // Both the accounts are treated equally by Ethereum virtual machine (EVM)

