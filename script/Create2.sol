// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;
import {Script} from "forge-std/Script.sol";
import {Create2Deployer} from "src/Create2Deployer.sol";

contract Create2Example is Script {
  function run () external {
    (new Create2Deployer()).run();
    bytes memory _text = hex"00";
    uint salt = 0;
    address to;

    vm.startBroadcast();
    assembly {
      to := create2(0, add(_text, 0x20), mload(_text), salt)
    }
  }
}
