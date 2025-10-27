// contracts/ScoreTracker.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ScoreTracker {
    mapping(address => uint256) public bestScore;
    event ScoreUpdated(address indexed player, uint256 score);

    function submitScore(uint256 score) external {
        require(score > bestScore[msg.sender], "lower score");
        bestScore[msg.sender] = score;
        emit ScoreUpdated(msg.sender, score);
    }
}
