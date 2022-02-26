pragma solidity 0.8.12;

contract Ballot {
    struct Candidate {
        uint32 id;
        string name;
        uint32 voteCount;
    }

    struct Vote {
        address voter;
    }

    uint32 public candidateCount;
    mapping(uint256 => Candidate) candidates;

    constructor() {}

    function addCandidate(string memory _candidateName) public {
        Candidate memory newCandidate = Candidate(
            candidateCount,
            _candidateName,
            0
        );
        candidates[candidateCount] = newCandidate;
        candidateCount++;
    }

    function getCandidates() external view returns (string[] memory) {
        string[] memory _names = new string[](candidateCount);
        for (uint32 i = 0; i < candidateCount; i++) {
            _names[i] = candidates[i].name;
        }
        return _names;
    }
}
