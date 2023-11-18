// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract FixedByte {
    // fixed byte array
    bytes2 public b2;
    bytes3 public b3;

    function setter() public {
        b2 = 'ab';
        b3 = 'abc';
    }
}