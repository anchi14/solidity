/*
fallback functions cannot have name
does not atke any input
does not return any output
must be declared as external
cannot be private

*/


contract fallback() external payable { 

    event Log(uint gas)
    console.log("Received %s Ether", msg.value);

    fallback () external payable{
        emit log (gasleft());
    }

}