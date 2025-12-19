// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract_Test {
    uint256 private savedData;
    
    event ValueChanged(uint256 oldValue, uint256 newValue, address changer);
    
    constructor(uint256 initialValue) {
        savedData = initialValue;
        emit ValueChanged(0, initialValue, msg.sender);
    }
    
    function set(uint256 newValue) public {
        uint256 oldValue = storedData;
        savedData = newValue;
        emit ValueChanged(oldValue, newValue, msg.sender);
    }
    
    function get() public view returns (uint256) {
        return savedData;
    }
}
