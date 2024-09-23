// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FallbackAndRecive {
    
    event Response(uint256 value,string desc);

    receive() external payable { 
        emit Response(msg.value,"receive");
    }

    fallback() external payable{
         emit Response(msg.value,"fallback");
    }
    


    function getBalance() public view returns(uint256){

        return address(this).balance;
    }
}