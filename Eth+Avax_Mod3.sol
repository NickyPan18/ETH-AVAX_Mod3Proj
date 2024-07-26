// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyTokenFunct is ERC20, Ownable{

    constructor() ERC20("NICOLA", "NLA") Ownable(msg.sender) {
    }

    // mint function - only contract owner can do
    function mint (address _address, uint256 _value) public onlyOwner{
        _mint(_address, _value);
    }

    // burn function - anyone
    function burn (address _address, uint256 _value) external {
        require(balanceOf(_address) >= _value, "Insufficient balance!");
        _burn(_address, _value);
    }

    // transfer function - anyone
    function transferTokens(address _address, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient balance");
        _transfer(msg.sender, _address, _value);
    }
}
