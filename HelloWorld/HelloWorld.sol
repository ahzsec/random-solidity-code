// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract HelloWorld {
    string public helloName;

    function assignName(string memory name) public {
        helloName = string.concat("hello ", name);
    }

    function greet() view public returns (string memory) {
        return helloName;
    }
}