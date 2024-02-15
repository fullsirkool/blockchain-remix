//SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract DataType {

    bool public isTrue = false; //true || false || 0 (false) || 1 (true)

    uint public number = 0;

    //uint256 is full space of unsigned int (value from 0 - (2^256)-1)

    //uint8 value from 0 to (2^8)-1
    uint8 public uint8Value = 250;

    //int value from -2^128 to (2^128)-1
    int public intNumberValue = -10;

    function setIsTrue(bool _isTrue) public {
        isTrue = _isTrue;
    }

    function setNumber(uint _number) public {
        number = _number;
    }

    function increaseUint8() public  {
        uint8Value++;
    }

}