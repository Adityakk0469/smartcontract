# Smart ContractError Handling Demonstration

smart contract to demonstrates the use of require(), assert(), and revert()

## Description

Overview: This project showcases effective error handling in Solidity smart contracts using require(), assert(), and revert() statements. It demonstrates how to ensure contract security, reliability, and proper user input validation.

Objectives: Illustrate the correct usage of require(), assert(), and revert().
Highlight differences in error handling and gas management.


Features:

  Ownership:  Constructor sets the deployer as the owner.
  onlyOwner modifier restricts functions to the owner.
  Fund Management:
  
  Deposit: Users can deposit Ether, validated by require().
  Withdraw: Owner can withdraw Ether, with checks using require() and assert().
  Balance Tracking: Publicly tracks the contract balance.
  Error Handling:
    Demo Revert: Uses revert() to handle over-withdrawal with custom messages.
    Demo Assert: Ensures balance invariants using assert().

    
Usage:

Deploy on Remix IDE.
Interact with contract functions to observe error handling behaviors.
Benefits:

Security: Prevents unauthorized actions and potential exploits.
Reliability: Maintains contract integrity with critical checks.
User Feedback: Provides clear error messages for invalid actions.

## Getting Started

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

* How to run the program
* Step-by-step bullets
```
code blocks for commands
```

## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Authors

Contributors names and contact info

ex. Dominique Pizzie  
ex. [@DomPizzie](https://twitter.com/dompizzie)


## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
