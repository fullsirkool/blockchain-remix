//SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract ExampleMsgSender {
    address public userAddress;

    //Run once after deployment
    constructor(address _someAddress) {
        userAddress = _someAddress;
    }

    function updateUserAddress() public {
        userAddress = msg.sender;

        //msg.sender is address of wallet that calling this method. basically, it is user address
    }
}