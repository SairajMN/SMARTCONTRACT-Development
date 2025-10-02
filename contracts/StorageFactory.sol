// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

//In this contract learning abt the imports and inheritance in SOLIDITY 
//use the import to import other contract after the version
//we can add where ever we want but keeping them in one place will help lot in future
import {simplestorage, simplestorage2 } from "./SimpleStorage.sol";// importing the simplestorage contracts (ss and ss2) from the SimpleStorage.sol file
//using named import will really help when we have multiple contracts in the single 
//import "./SimpleStorage.sol"; is valid import method but I'm specifing contracts i want to use in this file or contracts 

contract storagefactory {
    // simplestorage public SS; Storing the simplestorage contract using storage or state variable in factory contract named SS
    // simplestorage2 public S; Storing the simplestorage2 contract using storage or state variable in factory contract named S
// every time we call the SS function it will deploy the simplestorage contract every time the address of deployed contract chnages 
//To keep the address on track I'm gonna use the DArray or List
simplestorage[] public Listofss; // creating a DArray or List for storing the deployed simplestorage contracts addresses 

    function createStorage() public {
//everytime the createStorage is called the simplestorage contract will be deployed. 
        // SS = new simplestorage(); creating a new instance of simplestorage contract using new keyword
        // S = new simplestorage2();
        simplestorage  SS = new simplestorage();  // storing the deployed contract in the SS variable and  using the simplestorage contract name to create the new contract
        Listofss.push(SS); // pushing the SS to the Listofss array
    }

    function store(uint256 ssindex, uint256 ssnumber) public {
        Listofss[ssindex].store(ssnumber);
    }

    function get(uint256 ssindex) public view returns (uint256) {
        return Listofss[ssindex].ret();
    }
    
}

