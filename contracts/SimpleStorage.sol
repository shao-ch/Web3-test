// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleStorage {
    uint256 public favoriteNumber;

    uint256[] public arr;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function getNum() public view returns (uint256) {
        return favoriteNumber;
    }

    function add(uint256 _element) public {
        favoriteNumber = favoriteNumber + _element;
    }

    function testArr() public {
        arr.push(1);
        arr.push(7);
        arr.push(8);
        arr.push(2);
        arr.push(9);

        uint256 popNum;
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i] > 3) {
                break;
            }
            popNum++;
        }
        for (uint256 i = 0; i < (arr.length - popNum); i++) {
            arr[i] = arr[i + popNum];
        }

        for (uint256 i = 0; i < popNum; i++) {
            arr.pop();
        }
    }

    function testArrV2() public {
        arr.push(1);
        arr.push(7);
        arr.push(8);
        arr.push(2);
        arr.push(9);

        uint256 index;

        while (arr.length > 0 && index < arr.length) {
            if (arr[index] <= 3) {
                arr[index] = arr[arr.length - 1];
                arr.pop();
            } else {
                index++;
            }
        }
    }

    function getArr() public view returns (uint256[] memory) {
        return arr;
    }
}
