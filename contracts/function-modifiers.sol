pragma solidity >=0.7.0 <0.9.0;

// function modifers are used to modify the behaviour of a function. for example to add prerequisite to a function.
// fm are customizable


contract Owner{

    address owner;

    constructor() public {
        owner = msg.sender;
    }
    // when we deploy the contract we want to set the address to the owner which woukd be msg.sender
    modifier  onlyOwner{
        require ( msg.sender == owner, "Only owner can call this function");
        _; // then continue with the function
    }

        modifier costs (uint price){
        require ( msg.value >= price, "Not enough ether for registration");
        _;
    }

}


contract Register is Owner{

    mapping (address => bool) registeredAddresses;
    uint price;

    constructor(uint initialPrice) public {
        price = initialPrice;
    }


    // function register will set the msg.sender (current caller) to true
    function register() public payable {
        registeredAddresses[msg.sender] = true;


    }

    // onlyOwner is fm
    // only owner should be allowed to change the price
    function changePrice(uint _price) public onlyOwner{
        price = _price;
    }

}