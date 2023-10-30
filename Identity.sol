// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Identity {
    // state variables => uses gas
    string name;
    uint age;

    // setting default values
    constructor() {
        name = "Raad";
        age = 24;
    }

    function getName() view public returns (string memory) {
        return name;
    }

    function getAge() view public returns (uint) {
        return age;
    }

    function setAge() public {
        age = age + 1;
    }
}