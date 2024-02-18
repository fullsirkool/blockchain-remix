//SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract DataType {
    bool public isTrue = false; //true || false || 0 (false) || 1 (true)

    uint256 public number = 0;

    //uint256 is full space of unsigned int (value from 0 - (2^256)-1)

    //uint8 value from 0 to (2^8)-1
    uint8 public uint8Value = 250;

    //int value from -2^128 to (2^128)-1
    int256 public intNumberValue = -10;

    string public str = "Hello Solidity";
    bytes public myBytes = "Hello Solidity";

    address public userAddress; 

    function setIsTrue(bool _isTrue) public {
        isTrue = _isTrue;
    }

    function setNumber(uint256 _number) public {
        number = _number;
    }

    function increaseUint8() public {
        uint8Value++;
    }

    function decreaseNumber() public {
        unchecked {
            number--;
        }
    }

    function setStr(string memory _str) public {
        str = _str;
    }

    function compareStrings(string memory _checkString)
        public
        view
        returns (bool)
    {
        return
            keccak256(abi.encodePacked(str)) ==
            keccak256(abi.encodePacked(_checkString));
    }

    function getBytesSize() public view returns (uint256) {
        return myBytes.length;
    }

    function setUserAddress(address _address) public {
        userAddress = _address;
    }

    function getUserAddressBalance() public view returns(uint){
        return userAddress.balance;
    }

    function getAddition(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
}


/*NOTES
Writting function: should not return variable because spend time to minning
view function: Accessing state variables
pure function: Not accessing state variables
*/
