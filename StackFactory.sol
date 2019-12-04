pragma solidity ^0.5.11;

contract StackFactory {

    event NewItem(uint stackId, string name, uint price, uint maxPerStack);

    struct Stack {
        Item[] items;
    }

    Stack[] public stacks;

    mapping (uint => address) public StackToOwner;
    mapping (address => uint) ownerStackCount;

    function _createStack(string memory _name, uint _price, uint _maxPerStack) public {
    uint id = stacks.push(Stack(_name, _price, _maxPerStack)) - 1;
    StackToOwner[id] = msg.sender;
    ownerStackCount[msg.sender]++;
    emit NewStack(id, _name, _price, _maxPerStack);
    }

    function getStack();
    function sellStack();
    function buyStack();




}