//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // Declare public state variables

    string public tokenName = "Proof Of Learn";
    string public tokenSymbol = "CRED";
    uint256 public totalSupply = 0;

    // Mapping to track token balances

    mapping(address => uint256) public balances;
    
    // This Function used to create 'Cred' Tokens 

    function mintTokens(address _to, uint256 _value) external {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // This Function used to Withdraw 'Cred' Tokens 

    function burn(uint256 _value) external {
        require(balances[msg.sender] >= _value, "Insufficient CRED");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

}
