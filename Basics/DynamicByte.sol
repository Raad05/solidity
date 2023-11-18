// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DynamicByte {
    // dynamic byte
    bytes public b = 'ab';

    function push() public {
        b.push('c');
    }

    function pop() public {
        b.pop();
    }

    function getLength() public view returns (uint) {
        return b.length;
    }

    function getElement(uint idx) public view returns (bytes1) {
        return b[idx];
    }
}