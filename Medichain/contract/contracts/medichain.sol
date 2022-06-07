// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./ERC20.sol";

contract medichain is ERC20 {

    constructor(uint256 iniS) ERC20("Hello ZENCON", "ZENCON") {
        _mint(address(this), iniS); 
    }


    uint public n = 10;

    function donate(address receiver, uint256 amount)payable public{

    require(amount > 0, "Fondos insuficientes");
    require(balanceOf(address(this))>=amount,"Contract as insuficent valance");
 

        _transfer(address(this),receiver,amount);
        
    }

    function deposit()payable public{

        _mint(msg.sender,msg.value);

    }

    function setn (uint _n) public{
    n= _n;
    }
}

