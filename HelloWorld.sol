// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/** 
 * @author Alessandro Figo Saleh | mku.eth
 * @title HelloWorld
 * @dev Implements simple unsigned integer storage system
 */
contract HelloWorld {

    uint256 number;

    // event for EVM logging
    event newNumberSet(
        uint256 indexed newNumber
    );

    /**
     * @dev Store unsigned integer
     * @param newNumber new number to be set
     */
    function storeNumber(uint256 newNumber) public {
        number = newNumber;
        emit newNumberSet(newNumber);
    }

    /**
     * @dev Retrieve integer 
     * @return integer stored
     */
    function retrieveNumber() external view returns (uint256) {
        return number;
    }
}