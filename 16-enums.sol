// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// enums are used to create user defined data types in solidity
contract EnumsExamples{
    
enum ApplicationStatus{
    APPLIED, 
    IN_PROGRESS,
    VERIFIED, 
    APPROVED
}

    /**
    // enums are indexed as per order starting from 0
    APPLIED ---> 0, 
    IN_PROGRESS ---> 1,
    VERIFIED ---> 2, 
    APPROVED ----> 3
     */

    ApplicationStatus loanStatus ;

    function loanApplied() public{
        loanStatus = ApplicationStatus.APPLIED;
    }
      function loanInProgess() public{
        loanStatus = ApplicationStatus.IN_PROGRESS;
    }
      function loanVerfied() public{
        loanStatus = ApplicationStatus.VERIFIED;
    }
      function loanApproved() public{
        loanStatus = ApplicationStatus.APPROVED;
    }
    function getLoanStatus() public view returns(ApplicationStatus){
        return loanStatus;
    }

}