pragma solidity ^0.4.23;

contract Decorated {
  // This contract defines several modifiers but does not use
  // them - they will be used in derived contracts.
  modifier onlyBy(address user) { require(msg.sender == user); _; }

  modifier onlyAfter(uint time) { require(now > time); _; }
}
