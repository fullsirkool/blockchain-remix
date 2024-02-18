//SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract BlockchainMessender {

    address private ownerAddress;
    string private str;
    
    constructor(address _ownerAddress) {
        ownerAddress = _ownerAddress;
    }

    function setStr(string memory _str) public {
        address userAddress = msg.sender;
        if (ownerAddress == userAddress) {
            str = _str;
        }
    }

    function getStr() public view returns(string memory){
        return str;
    }
}