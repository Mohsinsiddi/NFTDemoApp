  pragma solidity ^0.5.0;

import "./ERC721Full.sol";

contract ERC721Token is ERC721Full{
  constructor() ERC721Full("NFT Token","NFT") public{ 
  }
  function mint(string memory _tokenURI) public returns(bool){
      uint _tokenId = totalSupply().add(1);
     _mint(msg.sender, _tokenId);
     _setTokenURI(_tokenId,_tokenURI);
     return true;
  }
}