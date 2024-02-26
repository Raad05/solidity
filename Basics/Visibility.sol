// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Visibility {
    // dummy state variable
    uint public num1 = 1; // accessbile both inside and outside the contract
    uint private num2 = 2; // accessible only from within the contract
    uint internal num3 = 3; // accessible from within the contract and inherited contracts

    function publicExample() public view returns (uint) {
        return num1;
    }

    function privateExample() public view returns (uint) {
        return num2;
    }

    function internalExample() public view returns (uint) {
        return num3;
    }

    // external => can only be called from outside the contract
    function externalExample() external view returns (uint) {
        return num1;
    }
}