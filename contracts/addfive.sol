// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {simplestorage} from "./SimpleStorage.sol";

contract add is simplestorage {
    function store(uint256 _new) public override {
        favnum = _new + 5;
    }
}