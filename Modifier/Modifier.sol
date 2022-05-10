// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Modifier {
    uint public x;
    bool public paused;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    // Modifier to check paused condition.
    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    function inc() external whenNotPaused {
        x += 1;
    }

    function Dec() external whenNotPaused {
        x -= 1;
    }

    // Modifiers can take inputs.
    // This modifier checks that the integer passed in is not greater than 100.
    modifier cap(uint _x) {
        require(_x < 100, "Input must be lower than 100");
        _;
    }

    function incBy(uint _x) external whenNotPaused cap(_x) {
        x += _x;
    }
}