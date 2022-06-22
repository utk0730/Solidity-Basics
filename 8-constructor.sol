// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Car{
    string public model;

    constructor(string memory _modelName) {
        model = _modelName;
    }
}

// called only once during deployment of this contract
// so contract owner can set some values here
// during contract deployment, one need to pass constructor arguments