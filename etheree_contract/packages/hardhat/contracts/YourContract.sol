pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

  event SetPurpose(address sender, string purpose);

  event RegisterNewAddress(address sender, string registeredAddress)

  string public purpose = "Building Unstoppable Apps!!!";

  constructor() payable {
    // what should we do on deploy?
  }

  function setPurpose(string memory newPurpose) public {
      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      emit SetPurpose(msg.sender, purpose);
  }

  function registerNewAddress(string memory newAddress) public {
      registeredAddress = newAddress;
      console.log(msg.sender,"Registered new address of ", registeredAddress);
      emit RegisterNewAddress(msg.sender, registeredAddress);
  }

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}
