pragma solidity 0.5.17;


import "OpenZeppelin/openzeppelin-contracts@2.4.0/contracts/token/ERC721/ERC721.sol";

contract EarlyAccessToken is ERC721 {

    uint256 nonce;
    string name;
    string symbol;
    
    constructor(
        string memory name,
        string memory symbol)
        ERC721()
        public 
        {
            name=name;
            symbol=symbol;
        }

    function mint(address to) public{
        nonce++;
        _safeMint(to, nonce);
    }
}

