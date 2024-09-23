// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public  simpleStorageArray;

    function createSimpleStorageContract() public {
        simpleStorageArray.push(new SimpleStorage());
    }
    

    function sfStorage(uint256 _storageIndex,uint256 _simpleStorageNumber) public {
        SimpleStorage simpleStorage= simpleStorageArray[_storageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGetNum(uint256 _storageIndex) public view  returns (uint256){

        SimpleStorage simpleStorage= simpleStorageArray[_storageIndex];
        return simpleStorage.getNum();
    }
}