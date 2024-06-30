// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract CustomERC20Token is ERC20 {
    address public contractOwner;

    constructor(uint256 initialSupply) ERC20("Marvels Token", "MT") {
        contractOwner = msg.sender;
        _mint(msg.sender, initialSupply);
    }

    modifier onlyContractOwner {
        require(msg.sender == contractOwner, "Only the contract owner can mint tokens");
        _;
    }

    function mintTokens(uint256 amount) public onlyContractOwner {
        _mint(msg.sender, amount);
    }

    // Function to transfer tokens from the owner to any account

    function withdrawTokens(uint256 amount) public {
        require(balanceOf(contractOwner) >= amount, "Insufficient balance");//ensure sufficient tokens for withdrawal
        _approve(contractOwner, msg.sender, amount);
        transferFrom(contractOwner, msg.sender, amount);
    }

    // Function to transfer tokens between two accounts that are not the owner

    function transferTokensFrom(address sender, uint256 amount) public {
        require(balanceOf(sender) >= amount, "Insufficient balance");// Ensure sufficient tokens for transfer

        _approve(sender, msg.sender, amount);
        transferFrom(sender, msg.sender, amount);
    }

    function burnTokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");//verify sufficient tokens for burning

        _burn(msg.sender, amount);
    }
}
