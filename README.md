## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

DEPLOYMENT RESULT

```shell
[⠊] Compiling...
[⠒] Compiling 1 files with Solc 0.8.27
[⠑] Solc 0.8.27 finished in 476.53ms
Compiler run successful!
Deployer: 0xF79102F12fC0ddDFbDDF459F3b2C3caB341F27C1
Deployed to: 0xF9E58DA7B14B0fabcBb7D9FB5c37A5aB92E4cF4E
Transaction hash: 0x6effdefe753139b8cdbdfd13a300554d3d071b7e043a7b92caa1f0d7c8ccfcaf
```
