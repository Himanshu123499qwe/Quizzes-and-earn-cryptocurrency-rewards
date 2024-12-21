# QuizReward Smart Contract

## Project Title

QuizReward Smart Contract

## Project Description

The **QuizReward** smart contract is a decentralized application built on Ethereum that allows users to take a quiz, submit their scores, and receive a reward if they meet the passing criteria. The contract ensures that users can only take the quiz once and that rewards are only distributed to users who achieve a minimum score.

The contract is designed to be owned by a single entity (the contract owner) who can update the reward amount or withdraw funds from the contract. The smart contract supports the receiving of ETH for funding the rewards and manages the distribution securely.

## Contract Address
0x1B5bfe7f36da1a4B547880Ea8FE26a4A8c24B30a
![image](https://github.com/user-attachments/assets/db735d0e-30f8-4afb-9454-619aaa255b66)

## Project Vision

The **QuizReward** contract aims to incentivize learning and engagement through blockchain technology by providing a tangible reward for quiz takers. It can be integrated into various educational platforms, gamified learning environments, or competitions. By leveraging the transparency and security of blockchain, the contract ensures that rewards are distributed fairly based on user performance.

The contract also serves as a demonstration of how smart contracts can be used to handle small-scale reward systems in a decentralized, trustless manner.

## Key Features

- **Reward Distribution**: Users who complete the quiz and score above the minimum passing score (7 out of 10) receive a reward in ETH.
- **One-Time Quiz Completion**: Each user can only submit their quiz score once.
- **Customizable Reward**: The contract owner can update the reward amount by calling the `setRewardAmount` function.
- **Owner Withdrawals**: Only the owner of the contract can withdraw the balance of the contract.
- **Secure and Transparent**: Using Ethereum's decentralized network, the contract ensures that all transactions are secure and auditable by anyone.
- **Quiz Score Validation**: Only valid quiz scores (between 0 and 10) are accepted, ensuring proper input validation.
- **Event Logging**: The contract emits events to log important actions, such as when a user completes the quiz and when the reward amount is updated.

## How to Use

1. **Deploy the Contract**: Deploy the contract on the Ethereum network (Mainnet or Testnet).
2. **Take the Quiz**: A user submits their score by calling the `submitQuiz` function with their score (an integer between 0 and 10).
3. **Reward Distribution**: If the user’s score meets or exceeds the passing score (default: 7), they will automatically receive the specified reward amount in ETH.
4. **Contract Owner Actions**: The owner can modify the reward amount or withdraw the contract's balance by using the `setRewardAmount` and `withdrawBalance` functions, respectively.

## How to Interact

- **Submit Quiz Score**: Users can submit their scores to the contract by calling `submitQuiz(score)`.
- **Set Reward Amount**: The contract owner can update the reward amount by calling `setRewardAmount(newAmount)` with the desired value (in wei).
- **Withdraw Contract Balance**: The owner can withdraw the remaining balance of the contract using `withdrawBalance()`.
- **Check Contract Balance**: Any user can view the contract's balance using `getContractBalance()`.

## Technical Details

- **Smart Contract Version**: Solidity 0.8.x
- **Ethereum Network**: Compatible with Ethereum Mainnet and Testnet (Ropsten, Goerli, etc.)
- **Required Gas Fees**: Users will need to pay a gas fee for interacting with the smart contract.
