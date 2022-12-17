// SPDX-License-Identifier: MIT

// This line in the code tells the compiler version used...
pragma solidity ^0.8.13;

// This line declares a contract and gives it a name, used as an identifier..
contract EtherWallet {
    address payable public owner;

//The constructor is the function that get called when a contract is created..
    constructor() payable  {
        owner = payable(msg.sender);
    }
    
    // The receive function is needed in order for the contract to recieve ether..
    receive () external payable {}

// To enable only the owner of the wallet to withdraw..
    function withdraw(uint _amount,address _myaddress) external {
        require(msg.sender == owner, "caller is not owner");
        payable(_myaddress).transfer(_amount);
        //address = _address;
    }
//To check the balance in the contract..
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
//To deposit ether to the contract..
    function Deposit() public  payable{

    }
}
//0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2

// the addresss we are withdrawing to 
//0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
// the balance is now 0 i.e of the smart contract

// as we can see the 90  ether was sent to acct 3 which is 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
