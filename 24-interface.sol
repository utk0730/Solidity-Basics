// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract User{
    string public username;

    function setName(string memory _username) public {
        username = _username;
    }
    function getName() public  view returns(string memory){
        return username;
    }
}

/**
Interface :
    -   All function definitions inside interface are marked as external 
    -   State variable declaration not allowed inside interface
    -   Few data types are allowed - Enums, Struct
 */

interface IUser {
    enum OrderStatus { ordered , shipped, delivered}
    struct Vehicle{
        string brand;
        string modelname ;
    }
    function setName(string memory _username) external;
    function getName() external view returns(string memory);
}


contract AccessUser{
    function readUsername() public{
        IUser("address of User contract after deployment gos here").getName(); // deploy contract and paste address
    }
}