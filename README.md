# Error Handling Project
This is a Solidity program that creates a basic contract token that also implements the basic use of error handling techniques in solidity.
## Getting Started
### Executing Program
Remix is an online Solidity IDE that you may use to run this application. To get started, go to https://remix.ethereum.org/.
When you are on the Remix website, click the "+" icon in the left sidebar to start a new file. The file should be saved with a.sol extension (such as MyToken.sol). The code below should be copied and pasted into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor(uint256 initialSupply) {
        totalSupply = initialSupply * 2 ** uint256(decimals);
        balanceOf[msg.sender] = totalSupply;
    }

   function transfer(address to, uint256 value) public {
    require(to != address(0), "Invalid recipient address");
    require(balanceOf[msg.sender] >= value, "Insufficient balance");


    balanceOf[msg.sender] -= value;
    

    emit Transfer(msg.sender, to, value);
}


    function assertExample() public pure {
        uint8 x = 255;
        uint8 y = 2;
        assert(x + y < 255);
    }

    function revertExample() public pure {
        revert("Revert function called");
    }
}

```


**Access Remix IDE:**

Go to the Remix IDE website at https://remix.ethereum.org/.
Create a New File:

On the left sidebar, you should see a panel named "File Explorers." Click on the "+" button to create a new file.

Name the file with a .sol extension (e.g., Token.sol), and paste the corrected contract code into this file.

**Compile the Contract:**

In the "Solidity Compiler" panel on the left, select the file you created (e.g., Token.sol).

Choose the desired Solidity version (e.g., 0.8.0) from the drop-down.

Click the "Compile Token.sol" button. This will compile the contract, and you should see the compiled artifacts in the "Compiled Contracts" section.

**Deploy the Contract:**

In the "Deploy & Run Transactions" panel, select the "Token" contract from the list.

Click the "Deploy" button. This will deploy the contract to a local development environment within Remix.

You can interact with the deployed contract using the provided user interface in Remix.

**Interact with the Contract:**

In the "Deployed Contracts" section, you will see the deployed contract with its functions listed.

To interact with the contract, use the provided input fields and buttons for functions like transfer, assertExample, and revertExample. Be sure to input the required parameters as explained earlier.

**View Events:**

In the "Deployed Contracts" section, you can also view events such as the Transfer event. After performing a token transfer, you can check this section to see the emitted events.
**Gas and Execution:**

Remix will display the estimated gas cost for each transaction. Ensure you have sufficient test ether (ETH) for gas to execute transactions.
**Debug and Test:**

You can use the debugging and testing features provided by Remix to simulate various interactions and test cases with the contract.
These steps will allow you to deploy and interact with the contract in Remix IDE, helping you understand its behavior and how error-handling mechanisms work.
## Authors
Metacrafter Franco
