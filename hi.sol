// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QuizReward {
    address public owner;
    uint256 public rewardAmount = 0.01 ether;
    mapping(address => bool) public hasCompleted;
    mapping(address => uint256) public userScores;
    uint256 public minimumPassingScore = 7;

    event QuizCompleted(address indexed user, uint256 score, uint256 reward);
    event RewardAmountUpdated(uint256 newAmount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Function to submit quiz score and get reward
    function submitQuiz(uint256 score) external {
        require(!hasCompleted[msg.sender], "Quiz already completed");
        require(score <= 10, "Score must be between 0 and 10");
        
        userScores[msg.sender] = score;
        
        if (score >= minimumPassingScore) {
            hasCompleted[msg.sender] = true;
            payable(msg.sender).transfer(rewardAmount);
            emit QuizCompleted(msg.sender, score, rewardAmount);
        }
    }

    // Function to update reward amount
    function setRewardAmount(uint256 newAmount) external onlyOwner {
        rewardAmount = newAmount;
        emit RewardAmountUpdated(newAmount);
    }

    // Function to withdraw remaining balance
    function withdrawBalance() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }

    // Function to check contract balance
    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }

    // Function to receive ETH
    receive() external payable {}
}