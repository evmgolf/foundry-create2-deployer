# A utility script for using CREATE2 with forge-script on chains without the hardcoded Create2Deployer 

The Create2Deployer script etches the [base Create2Deployer](https://github.com/Arachnid/deterministic-deployment-proxy) code into the hardcoded address from forge.
This allows any script to use CREATE2 for deployments, as long as it first calls `(new Create2Deployer()).run()`

For example, 
```sh 
anvil&
forge script --broadcast --rpc-url=http://localhost:8545 script/Create2.sol
```

This allows the create2 call to be broadcast, even though the Create2Deployer code has only been written in the local VM.
