// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyTokenFunct {

    // public variables here
    address public contractOwner;
    string public tokenName = "NICOLA";
    string public tokenAbbrev = "NLA";
    uint256 public totalSupply = 0;

    // mapping variable here
    mapping(address => uint256) public balances;

    constructor() {
        contractOwner = msg.sender;
        balances[msg.sender]= totalSupply;
    }

    // mint function - only contract owner can do
    function mint (address _address, uint256 _value) public {
        require(_address==contractOwner, "Only the contract owner can mint tokens");
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function - anyone
    function burn (address _address, uint256 _value) public {
        require(balances[_address] >= _value, "Insufficient balance!");
        totalSupply -= _value;
        balances[_address] -= _value;
    }

    // transfer function - anyone
    function transferTokens(address _toAddress, uint256 _value) public {
         require(balances[msg.sender] >= _value, "Insufficient balance!");
         balances[msg.sender] -= _value;
         balances[_toAddress] += _value;
    }
}
