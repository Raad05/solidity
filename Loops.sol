// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Loops {
    // for loop. while and do while loops are the same as traditional loops
    uint[3] public arr;

    function loop() public {
        for(uint i = 0; i < arr.length; i++) {
            arr[i] = i;
        }
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function getArray() public view returns (uint[3] memory) {
        return arr;
    }
}