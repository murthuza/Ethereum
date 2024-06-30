/*
Smart Contract Project
For this project, write a smart contract that implements the require(), assert() and revert() statements.

Upload your solution to GitHub and share the link with us along with a quick code walk-through as explained below.
*/


// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Drivinglicence{
    uint public driverage;

    function register(uint _age) public {
        driverage = _age;
    }

    function checkAssert() public view {
   
        assert(driverage >= 18 && driverage <= 65);
    }

    function checkRequire() public view {
     
        require(driverage >= 18, "You must be at least 18 years to Drive Vehicles");
        require(driverage <= 65, "You must be under 65 years old to Drive Vehicles");
    }

    function checkRevert() public view {
       
        if (driverage < 18 || driverage > 65) {
            revert("You must be between 18 and 65 years old to Drive Vehicles");
        }
    }
}
