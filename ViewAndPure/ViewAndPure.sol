// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract ViewAndPure {
    uint public x;

    // View does not allow to modify the state.
    function viewFunc(uint y) public view returns (uint) {
        return x + y;
    }

    // Pure does not allow to modify or read from the state.
    function pureFunc(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}