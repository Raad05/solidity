// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract FixedArray {
    // fixed array
    uint[5] public arr = [1, 2, 3, 4, 5];

    function setter(uint idx, uint val) public {
        arr[idx] = val;
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function getArr() public view returns (uint[5] memory) {
        return arr;
    }
}