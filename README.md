# Rocket Pool Contract v1.1 Verification

This repo allows third parties to easily verify that the contracts deployed for the v1.1 upgrade of Rocket Pool
match the source code of the contracts in the `v1.1` branch of the Rocket Pool smart contract repository.

# How it works

1. It clones the `v1.1` branch from the official Rocket Pool GitHub repository at https://github.com/rocket-pool/rocketpool
2. It compares the source for `RocketUpgradeOneDotOne.sol` against the verified source on Etherscan at the following addresses:
   1. Goerli: 0xC680a22b4F03977f69b51A09f3Dbe922eb77C8FE
   2. Mainnet: TBA
3. It calls each of the view methods on the upgrade contract to retrieve the address of each of the new contracts
4. It compares the verified source on Etherscan of each of these addresses to confirm they match the code in the git repo

# How to run it

Copy `.env.example` to `.env` and fill out the appropriate values.

The `verify.sh` script performs the required setup and executes the verification script. Simply run:

```bash
./verify.sh
```