// SPDX-License-Identifier: MIT
pragma solidity 0.5.0;

contract Overflow {
    uint8 public money = 255;

    // example of the 2018's batchOverflow problem
    function setter() public {
        money++;
    }
}