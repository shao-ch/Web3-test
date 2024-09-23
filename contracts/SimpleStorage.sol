// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleStorage {

     uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public  {
        favoriteNumber=_favoriteNumber;
    }

    function getNum() public view  returns (uint256){
        return favoriteNumber;
    }

    function add(uint256 _element) public {
         favoriteNumber=favoriteNumber+_element;
    }
}