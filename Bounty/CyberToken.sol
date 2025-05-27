// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CyberToken is ERC20 {
    constructor() ERC20("CyberToken", "CBT") {
        _mint(msg.sender, 1000000 * (10 ** decimals()));
    }

    function airdrop(address recipient, uint256 amount) public {
        _mint(recipient, amount);
    }
}
