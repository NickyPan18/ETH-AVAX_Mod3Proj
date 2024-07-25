# Project: Create and Mint Token
In this project I create a smart contract project that uses require() to allow functionality only in specific instances.


## Description
In this project I complete the requirements for my ETH+AVAX Metacrafters course by creating a smart contract project that uses require() to limit functionality to specific, permitted individuals. My smart contract contains a constructor as well as three functions: mint, burn, and transfer. The mint function is responsible for creating new tokens and can only be performed by the contract owner. This condition is ensured using the require() statement, if the condition that the person minting the tokens is the contract owner is true, then new tokens are minted, if not, an error message requiring that the person minting is the contract owner appears. The burn function destroys tokens and can be performed by anyone, its only condition is that the balance to burn is less than the user's balance. Similarly, the transfer function transfers tokens from one account to another, with its only condition being that the balance to transfer is less than the account's balance. It's worth noting that only the contract owner can mint new tokens, giving them a significant amount of control over the quantity of the token in circulation. It also means that users who want newly minted tokens would need to initially receive them from the contract owner. After that, users can transfer and/or burn tokens freely.

## Getting Started
## How/where to download your program
You can download my program directly from GitHub via the download button in the upper right. This project has no other download requirements.


## Executing program
This program can be run using the website Remix linked here: [https://remix.ethereum.org/](https://remix.ethereum.org/). You must upload the program onto Remix in order to access it using Remix's Ethereum Integrated Development Environment (IDE).

## Uploading the program onto Remix
You can upload the program onto Remix by clicking on the "File Explorer" button on the left sidebar. The default workspace should appear. Click on the third button (titled "Open a File From Your File System") under the name "default_workspace". The option to open a file should appear, where it will be possible to upload the solidity file.


## How to run the program
At this point, it is assumed that the Solidity file has been downloaded and is in the Remix workspace.
- Within Remix you can run the program by clicking the "Deploy & Run Transactions" button, the fourth button on the sidebar.
- Then press the "Deploy" button to deploy the contract.
- After this, you will be able to interact with the functions as well as call on the variables.
- To explore the functionality of the transfer function, as well as test the limitations of the mint function, try to run the contract functions from different accounts/non-owner accounts.
