// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Construct {
    uint public num;

    // constructor with an argument to initialize a value
    constructor(uint new_num) {
        num = new_num;
    }
}