// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract LocalStorage {
    // use pure while handling local storage
    function store() pure public returns (uint) {
        uint age = 24;
        return age;
    }
}