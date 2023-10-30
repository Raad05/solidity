// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Allocation {
    string[] public student = ["Yamin", "Mahi", "Sampad"];

    // memory
    function memo() public view {
        string[] memory s1 = student;
        s1[0] = "Raad";
    }

    // storage
    function store() public {
        string[] storage s1 = student;
        s1[0] = "Raad";
    }

    function getArray() public view returns (string[] memory) {
        return student;
    }
}