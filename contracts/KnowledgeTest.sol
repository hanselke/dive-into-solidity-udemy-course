//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract KnowledgeTest {
    string[] public tokens = ["BTC", "ETH"];
    address[] public players;
    address public owner;

    constructor() {

        owner = msg.sender;
    }

    function changeTokens() public  {
        tokens[0] = "VET";
    }

    receive () external payable {

    }

    function getBalance () public view returns (uint) {
        return address(this).balance;
    }

    function transferAll (address payable sendAddress) public {
        require(msg.sender == owner,"ONLY_OWNER");
        sendAddress.transfer(this.getBalance());
    }

    function start() public {
        players.push(msg.sender);
    }

    function concatenate(string memory a, string memory b) public pure returns  (string memory) {
        return string.concat(a,b);
    }
}
