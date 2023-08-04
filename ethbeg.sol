// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;
contract ethcont {

    // public variables here
    string public tokenName = "gurpreet";
    string public tokenAbbvr = "guri";
    uint public totalSupply = 0;


    // mapping variable here
    mapping(address=>uint) public balances;


    // mint function
    function minttoken(address _address, uint _value) public{
        totalSupply+=_value;
        balances[_address] += _value;
    }


    // burn function
    function burntoken(address _address, uint _value) public{
        require(balances[_address] > _value, "Cannot burn more than balance .");
        totalSupply-=_value;
        balances[_address] -= _value;
    }

}
