// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract GlobalVar {
    function getter() public view returns (uint block_no, uint timestamp, address sender) {
        return (
            block.number, 
            block.timestamp, 
            msg.sender
        );
    }
}