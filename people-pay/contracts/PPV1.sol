// contracts PPV1.sol
// SPDX-License-Identifier: MIT

// People Pay V1
// Author: Shivek Khurana <shivek@status.im>

pragma solidity ^0.8.0;

contract PPV1 {

    struct Employee {
	address payable _address;
	uint _salary;
    }

    address public _owner;
    Employee [] public _employees; // number the max number of employees to 100

    // the address that deploys is the admin
    constructor() {
	_owner = msg.sender;
    }

    function owner() public view returns (address) {
	return _owner;
    }

    function addEmployee(address payable add, uint amount) public {
	// only contract owner can add employees
	require(msg.sender == _owner);

	Employee memory newEmp;
	newEmp._address = add;
	newEmp._salary = amount;
	_employees.push(newEmp);
    }

    function showEmployees() public view returns (Employee[] memory) {
	return _employees;
    }
}
