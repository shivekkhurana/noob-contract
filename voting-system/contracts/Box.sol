//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

contract Box {
    uint private _value;

    // emit change events
    event ValueChanged(uint256 value);

    // store a new value in contract
    function store (uint256 value) public {
        _value = value;
        emit ValueChanged(value);
    }

    // read current value
    function retrieve () public view returns (uint256) {
        return _value;
    }
}