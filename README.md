# CDX Full-stack Engineering Take Home Assignment
Thank you for your interest in joining the CDx engineering team!

This document is just a quick test to see where your coding and problem solving skills are with something related to dApp development. It’s designed to be straightforward and not take too much of your time. 

Since a lot of this position will be JavaScript/Typescript-based app/library development and integrating with Solidity contracts, we've created a task that, in some capacity, represents the tooling you'll be working with on a day-to-day basis with us. 

## The task
Unlike other languages, access to complex data structures is quite limited in Solidity. In many cases, projects end up implementing common structures such as linked lists, traversable mappings, and sets by themselves. These structures are sometimes necessary for higher levels of abstraction and more complex protocols.

We want you to help implement a set-like structure in Solidity (using truffle to help out) that only allows a certain amount of "elements" in the set. Once you've created the Solidity contract, we want you to test it in **JavaScript/TypeScript, not in Solidity**.

### The CappedSet contract

Each "element" in the set is a pair: an `address` and a `value`. 

When the set gets too big (i.e., it reaches its max), it should boot out the element with the lowest `value`. 

This repo contains one contract, `CappedSet.sol`, that represents an instance of this special set. Its constructor takes an argument `numElements` that represents the maximum number of elements that can be in the set.

 There are three methods that we would like you to implement in `CappedSet.sol`: 

-  `insert(address addr, uint256 value) returns (address newLowestAddress, uint256 newLowestValue)`. 
    - This method should add a new element (`addr` and `value`) and return the new element with the lowest `value`, which might be itself. If this is the first element being inserted, this method should return `(0,0)`. 
- `update(address addr, uint256 newVal) returns (address newLowestAddress, uint256 newLowestValue)`. 
    - This method should update the existing element with address `addr`, if it exists, and return the new element with the lowest `value`, which might be itself. 
- `remove(address addr) returns (address newLowestAddress, uint256 newLowestValue)`.
    -  This method should delete the existing element with address `addr`, if it exists, and return the new element with the lowest `value`. 

There are already stubs for each in the contract. You're free to design the contract however you want as long as it follows the above behaviour. You can add as many contract members/fields as you wish. You can also use any open-source solidity libraries such as `openzeppelin`. 

### Testing the contract

For interacting with the contracts, you can use `ethers.js`, `web3`, or the native truffle contract wrappers. Up to you. Test as much as you think is necessary. 

**Remember to use JavaScript/TypeScript and not Solidity to test the contracts.**

## Setup
You'll need a local Ethereum blockchain to test these contracts. We recommend `ganache`. You can install ganache with 

`npm install -g ganache-cli` 

and start it up with 

`ganache-cli`

We've already written the migration script with a pre-defined set size of 30 and there are some helper npm scripts in `package.json` in case you don't want to install truffle globally. `truffle-config.js` is already configured to point to your local ganache on port `8545`.

All you have to do is code!

## What we're looking for
We're interested in your coding style, your familarity with smart contract development, and your JavaScript/TypeScript proficiency. Bonus points for low gas usage!

## How to complete this challenge
Fork this repo, implement `CappedSet.sol`, and write some tests in the `/test` folder. Send `julian@cdxproject.com` the GitHub link when you're done. 

Good luck!
