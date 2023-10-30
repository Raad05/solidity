// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// send amount to the deployed smart contract -> send amount to other addresses

contract Transaction {
    // address payable public getter = payable (0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    receive() external payable {}

    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }

    // deprecated or used less. Gas limit = 2300
    function sendEth(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        // reverts the transaction
        require(sent, "Transaction failed");
    }

    // deprecated or used less. Gas limit = 2300
    function transferEth(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    // used widely now. Can set our own gas limit
    function call(address payable _to) public payable {
        (bool sent,) = _to.call{value: msg.value}("");
        require(sent, "Transaction failed");
    }
}