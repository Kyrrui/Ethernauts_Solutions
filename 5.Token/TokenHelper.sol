pragma solidity ^0.4.17;

contract TokenHelper {
    
    Token _token;
    
    constructor(address tokenAddress) public {
        _token = Token(tokenAddress);
    }
    
    function transfer(address _to, uint _value) public {
        _token.transfer(_to, _value);
    }
    
}

contract Token {
    function transfer(address _to, uint _value) public returns (bool) {}
}