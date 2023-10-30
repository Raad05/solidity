// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Conditions {
    function checkIf(uint x) public pure returns (string memory) {
        string memory value;

        if(x > 0) {
            value = "x is greater than 0.";
        }
        else {
            value = "x is equal to 0.";
        }

        return value;
    }
}