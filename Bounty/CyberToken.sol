// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

//ERC20 代币合约，名称：CyberToken，简称：CBT
contract CyberToken is ERC20 {

    // 构造函数，在部署合约时自动执行
    constructor() ERC20("CyberToken", "CBT") {
        // 初始铸币 100 万个
        _mint(msg.sender, 1000000 * (10 ** decimals()));
    }

    // 空投函数，可向任意地址增发指定数量的代币
    function airdrop(address recipient, uint256 amount) public {
        _mint(recipient, amount);
    }
}
