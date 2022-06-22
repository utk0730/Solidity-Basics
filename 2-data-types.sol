// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataTypes{
    // String 
    string name; // default value is empty string;
    string greet = "Hello";
    string public nam2; // it is same as line 6, variables by default are internal
    string private name3;


    //Boolean
    bool done;// default value as false;
    bool walking = true;


    // Integer - positive, negative. No decimal
    int num1;
    int num2 = 10;
    // 👇🏻  int specified along with bits, size of int is in multiples of 8 till 256
    int8 n1 ; // -128 to 127
    int16 n2; // -32,768 to 32767
    int32 n3; // -2,147,483,648 to 2,147,483,647
    //.....
    //.....
    int256 n; // really big negative to really big positive
    // 🔴 simple int declaration is same as int256 declration 🔴



    // Integer - positive
    uint age;
    uint number = 10;
    uint256 bigNum = 1000;
    // 👇🏻  uint specified along with bits
    int8 i1 ; // 0 to 255
    int16 i2; // 0 to 65,535
    int32 i3; // 0 to 4,294,967,295
    //.....
    //.....
    int256 i; // 0 to really big positive
     // 🔴 simple uint declaration is same as uint256 declration 🔴



    // Decimal numbers
    // fixed, ufixed - rarely used as decimal calculations are usually done via library

    // Address - holds hexadecimal number, has methods like check balance
    // 1. contain 40 character (20 bytes long), and
    // 2. be prefixed with 0x.
    // 3. have a valid checksum
    address sender = 0xc0ffee254729296a45a3885639AC7E10F9d54979;

    // address payable has certain extra methods like - send/tranfer
    address payable sender1 =  payable(0xc0ffee254729296a45a3885639AC7E10F9d54979);


}
