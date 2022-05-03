// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Variables {
    // State variables are stored on the blockchain and declared outside a function.
    uint public num = 123;

    function LocalVars() external {
        // Local variables are not stored to the blockchain and declared inside a function.
        uint x = 456;
        bool y = true;
    }

    function GlobalVars() external view returns (uint, address) {
        // Global variables provides information about the blockchain.
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // Address of the caller
        return (timestamp, sender);
    }
}