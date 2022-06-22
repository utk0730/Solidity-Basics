// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// mapping is like  Map in javascript
contract MappingExample{
    mapping (uint => string) public ranking;

    struct University{
        string name;
        uint code;
    }
    //  mapping with struct
    mapping(uint => University) public universityRanking;

    function addRank(uint _rank, string memory _university) public {
        ranking[_rank] = _university;
    }

    //  mapping with struct
    function addUniversityRank (uint _rank, string memory _name, uint _code ) public {
        universityRanking[_rank] = University(_name, _code);
    }
   
}