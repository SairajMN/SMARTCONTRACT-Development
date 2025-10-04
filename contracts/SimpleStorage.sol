// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //selecting versions it's imp to select the needed version

contract simplestorage { // contract keyword is used to create contracts "contract name {code}"
    uint256 favnum; //defining the variable named favnum with uint type " there are many types of keywords to define types ex: bool (boolean value T/F 0/1 True/False), uint (unsigned intger the positive whole numbers only default 256 bits), int (signed intger val positive or negetive whole numbers), address (used to add wallet address), bytes (basically a string type has limit of 32 bits)"

    struct per{ //creating own type using struct to store other plps fav nums 
        uint256 favnums; //favnums to store fav number as uitn256
        string names; //names to store names as string
    }

    per[] public  listofplp; //creating dynamic array to store plps as list with ther favnums and names

    mapping (string => uint256) public finder; //adding the mapping to find the fav num of a plp by his name the mapping keyword used to map the key to value like dictionary in python "mapping (key => value) public name of mapping" the public keyword used to make the mapping visible to other devs and to create the getter function to get the value of the key 

    function store(uint256 _fav) public virtual { //function keyword is used to define function to perform in smart contracts "function name(parameters :parameters must be diff from the declared var coz u don't want to have an error in declaration) defining the function in "public : so the other dev can view the function and mod it" " virtual : so the function can be overrided by the other contract"
        favnum = _fav; // assigning the value of favnum with the value of _fav
    }

    function ret() public view returns (uint256) { // creating function to return the value of favnum "view keyword used to make the function viewable to other devs and to create getter function to get
        return favnum; //returning the favnum value
    }

    function add(string memory _name, uint256 _favnums) public { // creating function that stores or add new plps with there name and favnum "there is name new keyword called "memory : this keyword used store temp var it's going to exist during the the call of function""
        listofplp.push( per(_favnums, _name));//adding or pushing the data to the list or dynamic array to store value
        finder[_name] = _favnums; //adding the value to the mapping to map the key to value to find the favnum by the name of the plp
    }

}

contract simplestorage2 {}
contract simplestorage3 {}