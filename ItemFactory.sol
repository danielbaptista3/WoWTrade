pragma solidity ^0.5.11;

contract ItemFactory {

    event NewItem(uint itemId, string name, uint price, uint maxPerStack);

    struct Item {
        string name;
        uint price;
        uint maxPerStack;
    }

    Item[] public items;

    mapping (uint => address) public ItemToOwner;
    mapping (address => uint) ownerItemCount;

    function _createItem(string memory _name, uint _price, uint _maxPerStack) internal {
    uint id = items.push(Item(_name, _price, _maxPerStack)) - 1;
    ItemToOwner[id] = msg.sender;
    ownerItemCount[msg.sender]++;
    emit NewItem(id, _name, _price, _maxPerStack);
    }

    function _getItems() internal {
        
    }
}