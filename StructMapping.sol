// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract StructMapping {
    struct Student {
        string name;
        string major;
    }

    mapping (uint => Student) public student;

    function setter(uint _id, string memory _name, string memory _major) public {
        student[_id] = Student(_name, _major);
    }
}