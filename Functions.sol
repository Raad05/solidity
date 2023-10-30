// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Functions {
    uint age = 24;

    function getter() view public returns (uint) {
        return age;
    }
    // alternative of getter => uint public age = 24;

    function setter() public {
        age += 1;
    }
}