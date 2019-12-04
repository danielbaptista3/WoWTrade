pragma solidity >=0.5.0 <0.6.0;

contract ItemOwnership {

  function balanceOf(address _owner) external view returns (uint256) {
    return ownerItemCount[_owner];
  }

  function ownerOf(uint256 _tokenId) external view returns (address) {
    return zombieToOwner[_tokenId];
  }

  // Define _transfer() here

  function transferFrom(address _from, address _to, uint256 _tokenId) external payable {

  }

  function approve(address _approved, uint256 _tokenId) external payable {

  }
}
