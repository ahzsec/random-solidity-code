// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract IfElse {
    function example(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint x) public pure returns (uint) {
        return x < 10 ? 1 : 2;
    }
}