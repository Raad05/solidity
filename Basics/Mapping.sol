// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Mapping {
    // mapping
    mapping (string => uint) public student;

    function setter(uint _id, string memory _name) public {
        student[_name] = _id;
    }
}