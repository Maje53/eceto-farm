// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FarmLeaderboard {

    struct Score {
        uint256 totalGrass;
        string  rank;
        uint256 updatedAt;
    }

    mapping(address => Score) public scores;
    address[] public players;

    event ScoreUpdated(address indexed player, uint256 totalGrass, string rank);

    function submitScore(uint256 totalGrass, string calldata rank) external {
        if (scores[msg.sender].updatedAt == 0) {
            players.push(msg.sender);
        }
        scores[msg.sender] = Score(totalGrass, rank, block.timestamp);
        emit ScoreUpdated(msg.sender, totalGrass, rank);
    }

    function getScore(address player) external view
        returns (uint256 totalGrass, string memory rank, uint256 updatedAt)
    {
        Score memory s = scores[player];
        return (s.totalGrass, s.rank, s.updatedAt);
    }

    function getTopPlayers(uint256 limit) external view
        returns (address[] memory addrs, uint256[] memory grasses, string[] memory ranks)
    {
        uint256 len = players.length < limit ? players.length : limit;
        addrs  = new address[](len);
        grasses = new uint256[](len);
        ranks   = new string[](len);

        // simple selection sort (fine for small leaderboards)
        address[] memory tmp = new address[](players.length);
        for (uint i = 0; i < players.length; i++) tmp[i] = players[i];

        for (uint i = 0; i < len; i++) {
            uint best = i;
            for (uint j = i + 1; j < tmp.length; j++) {
                if (scores[tmp[j]].totalGrass > scores[tmp[best]].totalGrass) best = j;
            }
            (tmp[i], tmp[best]) = (tmp[best], tmp[i]);
            addrs[i]   = tmp[i];
            grasses[i] = scores[tmp[i]].totalGrass;
            ranks[i]   = scores[tmp[i]].rank;
        }
    }

    function playerCount() external view returns (uint256) {
        return players.length;
    }
}
