// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;
import {Test} from "forge-std/Test.sol";
import {Create2} from "create2/Create2.sol";
import {Create2Deployer} from "src/Create2Deployer.sol";

contract Create2Example is Test {
  function run () external {
    (new Create2Deployer()).run();

    bytes memory _text = hex"00";
    uint salt = 0;
    vm.startBroadcast();
    address to = Create2.create2Text(salt, _text);
    assertTrue(to != address(0));
    assertEq0(to.code, _text);
  }
}
