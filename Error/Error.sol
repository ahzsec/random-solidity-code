// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Error {
    uint public n = 1;

    function assertTest() public view {
        // Assert should only be used to test for internal errors and to check invariants.
        assert(n == 1);
    }

    function requireTest(uint x) public pure {
        // Require should be used to validate conditions such as inputs, conditions before execution and return values from calls to other functions.
        require(x > 10, "Input must be greater than 10");
    }

    function revertTest(uint x) public pure {
        // Revert is useful when the condition to check is complex.
        if (x <= 10) {
            revert("Input must be greater than 10");
        }
    }

    // custom error.
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function CustomErrorTest(uint withdrawAmount) public view {
        uint balance = address(this).balance;
        if (balance < withdrawAmount) {
            revert InsufficientBalance({balance: balance, withdrawAmount: withdrawAmount});
        }
    }
}