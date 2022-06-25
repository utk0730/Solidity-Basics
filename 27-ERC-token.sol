// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
    ERC20  - Ethereum token standard to create your own token
 */

 import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GLDToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Gold", "GLD") { // token name , token symbol 
        _mint(msg.sender, initialSupply); // total no of tokens in supply
    }
}
