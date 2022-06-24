// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
    1. only constant variable declarations allowed inside Library
    2. when state variable are passed into library function , they must be recieved in function arguments as memory
 */

library ArrayLibrary{
    function reverseNumberArray(uint[] storage _arr) external view returns(uint[] memory){
        uint[] memory _reverseArr = new uint[](_arr.length);
        uint count = 0;
        for(uint i; i <= _arr.length - 1 ; i++){
            _reverseArr[_arr.length - 1 - count] = _arr[i];
            count = count  + 1;
        }
        return _reverseArr;
    }
}


contract LibraryExmaple{
    // another way of using library method
    using ArrayLibrary for uint[];

    uint[] public originalArray = [1,2,3,10];
    function getReversedNumberArray() public view returns(uint[] memory){
        return originalArray.reverseNumberArray(); // way 1
       // return ArrayLibrary.reverseNumberArray(originalArray); // way 2
    }
}