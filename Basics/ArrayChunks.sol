// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ArrayChunks {
    // An array of 5000 number data
    uint[] public numbers;

    function addNumber(uint _number) public {
        numbers.push(_number);
    }

    function getNumbers(
        uint _startIdx,
        uint _chunkSize
    ) public view returns (uint[] memory) {
        require(_startIdx < numbers.length, "Index out of bounds");

        uint endIdx = _startIdx + _chunkSize;
        if (endIdx > numbers.length) {
            endIdx = numbers.length;
        }

        uint[] memory chunk = new uint[](endIdx - _startIdx);
        for (uint i = _startIdx; i < endIdx; i++) {
            chunk[i - _startIdx] = numbers[i];
        }

        return chunk;
    }
}
