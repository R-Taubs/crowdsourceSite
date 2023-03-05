// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract CrowdSourcing {
    struct Campaign {
        address owner;
        string title;
        string description;
        uint256 target;
        uint256 deadline;
        uint256 amountCollected;
        string image;
        address[] donators;
        uint256[] donations;
    }

    mapping(uint256 => Campaign) public campaigns;

    uint256 public numberOfCampaigns = 0;

    function createCampaign (address _owner, string memory _title, string memory _description, uint256 _target, uint256 _deadline, string memory _image) public returns (uint256) {
        Campaign storage campaign = campaigns[numberOfCampaigns]

        require (campaign.deadline < block.timestamp, "The deadline ought to be set in the FUTURE, numbskull")

        campaign.owner = _owner;
        campaign.title = _title;
        campaign.description = _description;
        campagin.target = _target;
        campaign.amountCollected = 0;
        campaign.image = _image;

        numberOfCampaigns++;
    }

    function donateToCampaign (uint256 _id) public payable {
        uint256 amount = msg.value;

        Campaign storage campaign
    }

    function getDonators () {}

    function getCampaigns () {}
}