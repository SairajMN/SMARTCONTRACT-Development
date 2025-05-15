// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; //im using 0.8.18 

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract simplestorage {
    uint256 favnumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        favnumber = _favoriteNumber;
    }

    // view reads the function and return the value, pure only returns the given value
    function retrieve() public view returns (uint256) {
        return favnumber;
    }

    // (memory, calldata) used for temp storage pf values, storage used for peremanent storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

contract simplestorage2 {}

contract simplestorage3 {}

contract simplestorage4 {}