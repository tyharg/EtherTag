pragma solidity ^0.4.17;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract TagToken is StandardToken {

 
  string public name = 'TagToken';
  string public symbol = 'TAG';
  uint8 public decimals = 2;
  uint public INITIAL_SUPPLY = 1;
  address whosIt;



  function TagToken() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    whosIt = msg.sender;
  }

  function getIt() external view returns (address) {
    address owners;
    owners = whosIt;
    
    return (whosIt);

  
  }

}
