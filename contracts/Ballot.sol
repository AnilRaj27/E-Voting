pragma solidity 0.8.12;

contract Ballot {
    struct Candidate {
        uint32 id;
        string name;
    }

    struct Vote {
        address voter;
    }

    mapping(uint256 => Candidate) candidatesList;

    constructor() {}

    function addCandidate(uint32 _id, string memory _candidateName) public {
        candidatesList[_id] = Candidate(_id, _candidateName);
    }

    function getCandidates() public {}
}
