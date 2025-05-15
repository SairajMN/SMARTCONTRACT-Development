// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {simplestorage} from "./simplestorage.sol";

contract storagefactory{

    simplestorage[] public listOfsimplestorageContracts;

    function createsimplestorageContract() public {
        simplestorage newsimplestorageContract = new simplestorage();
        listOfsimplestorageContracts.push(newsimplestorageContract);
    }

    function sfStore(uint256 _simplestorageIndex, uint256 _newsimplestorageNumber) public {

        listOfsimplestorageContracts[_simplestorageIndex].store(_newsimplestorageNumber);
    }

    function sfGet(uint256 _simplestorageIndex) public view returns(uint256) {
        return listOfsimplestorageContracts[_simplestorageIndex].retrieve();
    }
}