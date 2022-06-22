// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Fixed size array, Dynamic size array

contract ArrayExample{
    uint[10] public array1; // fixed array
    uint[] public array2; // dynamic array

    struct Season{
        string name;
        string temperature;
        string[] months;
    }
    Season[] seasons;

    //Methods on array
    // push
    // pop
    // length
    // delete

    // 🔴 push, pop methods not available on fixed size arrays 🔴
    // 🔴 dynamic sizes array are not allowed inside functions 🔴

    function pushToArray(uint num) public {
        // array1.push(num); // not allowed as array1 is fixed size array
        array2.push(num);
    }
     function popFromArray() public {
        // array1.pop(); // not allowed as array1 is fixed size array
        array2.pop();
    } 
    function getArrayLength() public view returns(uint) {
        //return array1.length // allowed
        return array2.length;
    } 
    function deleteFromArray(uint index) public {
        // delete(array1[index]); // allowed
        delete(array2[index]);
    } 


}