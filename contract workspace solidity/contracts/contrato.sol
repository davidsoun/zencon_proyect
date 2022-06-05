// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract transaccion  is ERC20 {

    constructor(uint256 iniS) ERC20("Hello ZENCON", "ZENCON") {
        _mint(address(this), iniS); 
    }


    ERC20 public token;

    function donation(address reciver, uint256 amount)payable public{

    require(amount > 0, "Fondos insuficientes");
    require(balanceOf(address(this))>=amount,"Contract as insuficent valance");
 

        _transfer(address(this),reciver,amount);
        
    }

}
