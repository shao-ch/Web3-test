// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//get funds from users
//withdraw dunds
//set minimum funding value in usd;

import "./NumberUtils.sol";

error FundPay_revert();
contract FundPay {
    using NumberUtils for uint256;

    uint256 public constant MINIMUM_USD = 50 * 1e18;

    address[] public funders;

    uint[3] private nftArr=[1,2,3];

    uint256 private testInt;

    address public immutable i_owner;

    mapping(address => uint256) public addressToAmountFunded;

    event CallStatus(bool success);

     event CallStatusV2(bool success);

    event Response(bool success, bytes data);

    event Log(string func, uint256 gas);

    constructor() {
        i_owner = msg.sender;
    }

    // //send a funding value
    
    // function test() public  pure  returns (uint256) {
    //     uint[2] memory staticArr = [1, 2];

    //     return staticArr[1];

    // }

    function getTestInt() public view returns(uint256) {
        return testInt;
    }

    function fund() public  payable {
        require(msg.value>0,"not enough value to send");
    }

    
    function getBalance() public view  returns(uint256) {
        return address(this).balance;
    }

    function setTestInt(bool _require,uint256 _testInt) external  payable  {
        require(msg.value>0,"not enough value to send");
        testInt=_testInt;
        (bool success,bytes memory data) = payable (msg.sender).call{value: address(this).balance}("");
        emit Response(success,data);
        emit CallStatusV2(success && _require);
        require(success,"execute fail");
    }



    modifier checkFunder(){
        require(i_owner==msg.sender,"this funder is owner");
        _;
    }

}
