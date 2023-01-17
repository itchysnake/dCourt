// SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

import "./darp.sol";

contract MyToken1 is DARP {
    constructor(
        string memory name,
        string memory symbol,
        uint256 amount) DARP(name, symbol, amount) {}
}

contract MyToken2 is DARP {
    constructor() DARP("MyToken", "MKT", 500) {} 
}