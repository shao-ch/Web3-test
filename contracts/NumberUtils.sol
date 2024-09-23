// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

library NumberUtils {

     
    //get the USD price of eth
    function getPice(AggregatorV3Interface aggregatorV3) internal  view returns (uint256) {
        
        //the unit of the responese is eth ,we need price*1e10
        (, int256 price, , , ) = aggregatorV3.latestRoundData();
        uint256 thisUnit = uint256(aggregatorV3.decimals())**10;
        return uint256(price) * thisUnit;
    }

    function getConverAomunt(AggregatorV3Interface aggregatorV3,uint256 _ethNumber) internal view returns (uint256) {
        uint256 price = getPice(aggregatorV3);
        return (price * _ethNumber) / 1e18;
    }

    function getVersion(AggregatorV3Interface aggregatorV3) internal view returns (uint256) {

        uint256 version = aggregatorV3.version();
        return version;
    }
}
