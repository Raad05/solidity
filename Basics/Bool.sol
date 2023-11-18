// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Bool {
    bool public val;

    function checkIf(uint x) public returns (bool) {
        if(x > 10) {
            val = true;
        }
        return val;
    }
}