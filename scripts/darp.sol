// SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

abstract contract DARP is ERC20 {

    // dCourt Address: 0x0
    address dCourtAddress = "Example Address";

    constructor(string memory name, string memory symbol, uint256 amount) ERC20(name, symbol) {
        _mint(msg.sender, amount);
    }
    
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {

        if (msg.sender == dCourtAddress) {
            _transfer(from, to, amount);
            return true;
        }
        else {
            address spender = _msgSender();
            _spendAllowance(from, spender, amount);
            _transfer(from, to, amount);
            return true;
        }
    }
}
