
pragma solidity >=0.8.0 <0.9.0;
// SPDX-License-Identifier: MIT

// inherited from OpenZeppelin's ERC20 Token standard
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

// learn more: https://docs.openzeppelin.com/contracts/3.x/erc20

contract YourContract is ERC20 {
  // ToDo: add constructor and mint tokens for deployer,
  //       you can use the above import for ERC20.sol. Read the docs ^^^

  // constructor
  constructor() public ERC20('ETHEREE', 'EEE') {
    // _mint() 1000 * 10 ** 18 to msg.sender
    _mint(msg.sender, 10000 * 10**18);
  }

  function mint(address to, uint256 amount) external {
    _mint(to, amount);
  }
}
