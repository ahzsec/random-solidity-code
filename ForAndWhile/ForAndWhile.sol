// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract ForAndWhile {
    uint public x;
    uint public y;

    function ForAndWhileLoop() external {
        for (x = 0; x < 10; x++) {
            if (x == 3) {
                // Skip to next iteration with continue.
                continue;
            }
            if (x == 5) {
                // Exit loop with break.
                break;
            }
        }

        while (y < 10) {
            y++;
        }
    }
}