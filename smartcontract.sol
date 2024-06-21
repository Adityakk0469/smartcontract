// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract controlstructuresdemo {
    address public owner;
    uint public balance;

    constructor() {
        owner = msg.sender; 
    }

    //require()
    modifier onlyowner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    // Function to deposit
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balance += msg.value;
    }

    // Function to withdraw
    function withdraw(uint amount) public onlyowner {
        require(amount <= balance, "Insufficient balance");
        
        // assert()
        assert(balance >= amount);

        balance -= amount;
        payable(owner).transfer(amount);
    }

    // revert()
    function demoRevert(uint amount) public {
        if (amount > balance) {
            revert("Requested amount exceeds balance");
        }
        
        balance -= amount;
        payable(msg.sender).transfer(amount);
    }

    // Function to demonstrate assert()
    function demoAssert() public view {
        assert(balance >= 0);
    }
}

