// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;
import {Script} from "forge-std/Script.sol";

contract Create2Deployer is Script {
  function run () external {
    vm.etch(
      0x4e59b44847b379578588920cA78FbF26c0B4956C,
      hex"604580600e600039806000f350fe7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe03601600081602082378035828234f58015156039578182fd5b8082525050506014600cf3"
    );
  }
}
