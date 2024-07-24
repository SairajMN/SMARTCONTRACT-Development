// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfsimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newsimpleStorageContract = new SimpleStorage();
        listOfsimpleStorageContracts.push(newsimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {

        listOfsimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfsimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}