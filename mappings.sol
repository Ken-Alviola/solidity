//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;
contract Auction{
    // declaring a variable of type mapping
    // keys are of type address and values of type uint
    mapping(address => uint) public bids;
    
    // initalizing the mapping variable
    // the key is the address of the account that calls the function
    // and the value of the wei sent when calling the function
    function bid() payable public{
        bids[msg.sender] = msg.value;
    }
}