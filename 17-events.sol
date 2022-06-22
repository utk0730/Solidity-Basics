// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExample{
    address sender;
    string name;

    //Indexing is used for filtering the events for specific values.
    // Max 3 indexed arguments are allowed
    // reference type data - like string, bytes,arrays should not be indexed as if indexed instead of value itself , their hash will be stored in logs
    event addUserEvent(address indexed _sender, string _name);

    function addUser(address _senderAddress, string memory _senderName) public {
        emit addUserEvent(_senderAddress, _senderName);
    }
}