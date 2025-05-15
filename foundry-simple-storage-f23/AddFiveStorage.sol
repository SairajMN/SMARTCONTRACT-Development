// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {simplestorage} from "./simplestorage.sol";

contract AddFiveStorage is simplestorage {
    function store(uint256 _favoriteNumber) public override {
        myFavoriteNumber = _favoriteNumber + 5;
    }
}