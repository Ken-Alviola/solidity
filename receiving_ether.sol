//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.6.0 <0.9.0;

contract Deposit{
    
    // either receive() or fallback() is mandatory for the contract to receive ETH by
    // sending ETH to the contract's address
    
    // declaring the receive() function that is executed when sending ETH to the contract address
    // it was introducted in Solidity 0.6 and a contract can have only one receive function
    // declared with this syntax (without the function keyword and without arguments).
    receive() external payable{
    }
    
    // declaring a fallback payable function that is called when msg.data is not empty or
    // when no other function matches
    fallback() external payable{
    }
    
    // ether can be sent and received by the contract in the transaction that calls this function as well
    function sendEther() public payable{
    }
    
    // returning the balance of the contract.
    function getBalance() public view returns(uint) {
        // this is the currenct contract, explicitly convertible to address,
        // and balance is a member of any variable of type addres.
        return address(this).balance;
    }
}