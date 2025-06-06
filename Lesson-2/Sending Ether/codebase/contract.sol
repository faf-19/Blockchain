// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;
    address public charity;

    constructor(address _charity) {
        owner = msg.sender;
        charity = _charity;
    }

    receive() external payable {}

    function tip() public payable {
        (bool sent, ) = owner.call{ value: msg.value }("");
        require(sent, "Tip transfer failed");
    }

    function donate() public {
        // Self-destruct and send all remaining Ether to the charity
        selfdestruct(payable(charity));
    }
}
