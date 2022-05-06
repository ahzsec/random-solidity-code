// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Counter {
    uint public count;

    // Function to reset the current count.
    function reset() external {
        count = 0;
    }

    // Function to increment count by 1.
    function inc() external {
        count += 1;
    }

    // Function to decrement count by 1.
    function dec() external {
        // This function will fail if count = 0.
        count -= 1;
    }
}