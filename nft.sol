// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract nft is ERC721, Ownable {
    constructor() ERC721("VikJay NFT","VJT") {

    }

    function _baseURI() internal pure override returns(string memory) {
        return "https://ipfs.io/ipfs/QmXPowNvRooCjU8viDKP6TycE3M1rVA6V4CvkphBbUK1wf?filename=VikJay-nft.json";

    }

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

}