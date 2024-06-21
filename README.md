# Smart ContractError Handling Demonstration

smart contract to demonstrates the use of require(), assert(), and revert()

## Description

* Overview: This project showcases effective error handling in Solidity smart contracts using require(), assert(), and revert() statements. It demonstrates how to ensure contract security, reliability, and proper user input validation.

* Objectives: Illustrate the correct usage of require(), assert(), and revert().
Highlight differences in error handling and gas management.


* Features:

  Ownership:  Constructor sets the deployer as the owner.
  onlyOwner modifier restricts functions to the owner.
  
  Deposit: Users can deposit Ether, validated by require().
  
  Withdraw: Owner can withdraw Ether, with checks using require() and assert().
  
  Balance Tracking: Publicly tracks the contract balance.
  
  Error Handling:
    Demo Revert: Uses revert() to handle over-withdrawal with custom messages.
    Demo Assert: Ensures balance invariants using assert().

    
* Usage:

  Deploy on Remix IDE.
  Interact with contract functions to observe error handling behaviors.

* Benefits:

  Security: Prevents unauthorized actions and potential exploits.
  Reliability: Maintains contract integrity with critical checks.
  User Feedback: Provides clear error messages for invalid actions.

## Getting Started

### Installing

* To run test the program just copy the content of smartcontract.sol

### Executing program

* Open Remix IDE.
* Create a new file and paste the contract code.
* Compile the contract.
* Deploy the contract.
  
* Use the deposit function to add funds to the contract.
```
function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balance += msg.value;
    }

```
* Use the withdraw function to withdraw funds (only the owner can do this).
```
function withdraw(uint amount) public onlyowner {
        require(amount <= balance, "Insufficient balance");
        
        // assert()
        assert(balance >= amount);

        balance -= amount;
        payable(owner).transfer(amount);
    }
```
* Use the demoRevert function to test the revert statement.
```
function demoRevert(uint amount) public {
        if (amount > balance) {
            revert("Requested amount exceeds balance");
        }
        
        balance -= amount;
        payable(msg.sender).transfer(amount);
    }
```
* Use the demoAssert function to test the assert statement.
```
function demoAssert() public view {
        assert(balance >= 0);
    }
```






## Authors

Aditya Kumar
