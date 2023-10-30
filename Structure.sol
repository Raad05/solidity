// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

struct Student {
    string id;
    string name;
}

contract Structure {
    Student public s1;

    constructor(string memory _id, string memory _name) {
        s1.id = _id;
        s1.name = _name;
    }

    function changeInfo(string memory _id, string memory _name) public {
        Student memory new_info = Student({
            id: _id,
            name: _name
        });

        s1 = new_info;
    }
}