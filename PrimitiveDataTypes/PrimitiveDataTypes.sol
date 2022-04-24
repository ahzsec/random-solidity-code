// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract PrimitiveDataTypes {
    // boolean data type
    bool public boolean = true;

    // unsigned integer that ranges from 0 to 2 ** 8 - 1
    uint8 public u8 = 8;
    // unsigned integer that ranges from 0 to 2 ** 16 - 1
    uint16 public u16 = 16;
    // uint is an alias for uint256 that ranges from 0 to 2 ** 256 - 1
    uint public u256 = 256;

    // integer ranges that from -2 ** 7 to 2 ** 7 - 1
    int8 public i8 = -8;
    // integer ranges that from -2 ** 15 to 2 ** 15 - 1
    int16 public i16 = 16;
    // int is an alias for int256 that ranges from -2 ** 255 to 2 ** 255 - 1
    int public i = -256;
    
    // minimum of int
    int public minInt = type(int).min;
    // maximum of int
    int public maxInt = type(int).max;

    // fixed-sized byte arrays
    bytes1 a = 0xb5;
    // dynamically-sized byte arrays
    bytes b = hex"123456";

    // address is a 20 bytes data type which is 160 bits in size
    address public addr = 0x1F98431c8aD98523631AE4a59f267346ea31F984;

    // unassigned variables have a default value
    bool public defaultBoolean; // has the default value "false"
    uint public defaultUint; // has the default value "0"
    int public defaultInt; // has the default value "0"
    address public defaultAddr; // has the default value "0x0000000000000000000000000000000000000000"
}