// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract SimpleEscrow {
    address public buyer;
    address public seller;
    bool public isLocked;

    constructor(address _seller) payable {
        require(msg.value > 0, "Deposit required");
        buyer = msg.sender;
        seller = _seller;
        isLocked = true;
    }

    function releaseFunds() external {
        require(msg.sender == buyer, "Only buyer can release funds");
        require(isLocked, "Funds already released");

        isLocked = false;
        payable(seller).transfer(address(this).balance);
    }

    function refundBuyer() external {
        require(msg.sender == seller, "Only seller can refund buyer");
        require(isLocked, "Funds already released");

        isLocked = false;
        payable(buyer).transfer(address(this).balance);
    }

    // Get Contract's balance
    function balanceOf() public view returns (uint) {
        return address(this).balance;
    }
}
