// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor(uint256 initialSupply) {
        totalSupply = initialSupply * 2 ** uint256(decimals);
        balanceOf[msg.sender] = totalSupply;
    }

   function transfer(address to, uint256 value) public {
    require(to != address(0), "Invalid recipient address");
    require(balanceOf[msg.sender] >= value, "Insufficient balance");


    balanceOf[msg.sender] -= value;
    

    emit Transfer(msg.sender, to, value);
}


    function assertExample() public pure {
        uint8 x = 255;
        uint8 y = 2;
        assert(x + y < 255);
    }

    function revertExample() public pure {
        revert("Revert function called");
    }
}
