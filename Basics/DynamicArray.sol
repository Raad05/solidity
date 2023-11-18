// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DynamicArray {
    // dynamic array
    uint[] public arr;

    function push(uint elem) public {
        arr.push(elem);
    }

    function pop() public {
        arr.pop();
    }

    function getArray() public view returns (uint[] memory) {
        return arr;
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }
}