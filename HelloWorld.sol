// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    string public name;
    string public greetings = "Good day ";

    constructor(string memory _name) {
        name = _name;
    }

    function setNewName(string memory newName) public {
        name = newName;
    }

    function getName() public view returns (string memory) {
        return string(abi.encodePacked(greetings, name));
    }
}
