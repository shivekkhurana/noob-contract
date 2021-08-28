// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auth {
    address private _admin;

    // create deployer the admin on the contract
    constructor() {
	_admin = msg.sender;
    }

    // check if user us admin
    function isAdmin(address addToCheck) public view returns (bool) {
	return addToCheck == _admin;
    }
}
