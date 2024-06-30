# token_ERC20
## Overview
In this solidity smart contract "CustomERC20Token" I have created my own decentralized token by extending the standard ERC20 token interface. This program works exactly like a decentralised token deployed on Remix IDE using Sepolia testnet.

# Description
This token is based on standard ERC20 token interface. So, we can import it and use it locally from the link given below: 
https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol

## Requirements

- Solidity version >=0.8.2 <0.9.0
- OpenZeppelin Contracts v4.0.0

### Ownership Control

**Contract Owner**: The address that deploys the contract becomes the initial owner, with exclusive rights to mint tokens and perform administrative functions.

### Security and Compatibility

**OpenZeppelin Integration**: Built upon OpenZeppelin Contracts v4.0.0, ensuring industry-standard security practices and compatibility with other Ethereum smart contracts.

### Deployment

To deploy Marvels Token (MT) on an Ethereum network:

1. **Install Dependencies**: Ensure Solidity compiler (>=0.8.2 <0.9.0) and OpenZeppelin Contracts v4.0.0 are installed.
   
2. **Compile and Deploy**: Use your preferred Ethereum development framework (such as Truffle or Hardhat) to compile the contract and deploy it to the desired network.



## Contract Details

- **Token Name**: Marvels Token
- **Token Symbol**: MT
- **Initial Supply**: Specified at deployment

The program focuses on three functions:

1. The mint function "mintTokens()" is used to mint more tokens, equals to which it takes as argument. Also, only owner can call this function or mint tokens.

2. There are 2 functions to transfer tokens, first to transfer from owner's account to any other account/wallet -> "withdrawTokens()" and second to transfer tokens between accounts other than owner -> "transferTokensFrom()", both can be called by anyone.

3. The burn function "burnTokens()" to burn or delete the tokens from any address and also to remove them from the network.

## Contact

For questions, feedback, or support regarding Marvels Token (MT), please contact us at [email@ritneshntv.com](mailto:ritneshntv@gmail.com).



