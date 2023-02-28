pragma solidity ^0.6.0;
// How to work with Ether, pay smart contracts
    //How to do modifiers, visibility, Events and enums

contract HotelRoom{
    enum Statuses {Vacant, Occupied};
    Statuses currentStatus;
    
    address payable public owner;

    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }
    
    function book() payable {
        owner.transfer(msg.value);
    }
    
}
