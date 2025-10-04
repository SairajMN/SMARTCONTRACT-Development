// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity version 0.8.18 or greater is used to compile this code 

import {simplestorage} from "./SimpleStorage.sol"; // importing the simplestorage contract from the SimpleStorage.sol file

contract add is simplestorage { // creating a contract called add that inherits from the simplestorage contract, is used to specify the inheritance of the contract
    function store(uint256 _new) public override { // creating a function called store that takes a uint256 parameter called _new and is public and overrides the store function from the simplestorage contract (must add vritual keyword to the store function in the simplestorage contract)
        favnum = _new + 5; // setting the favnum variable to the value of _new plus 5
    }
}