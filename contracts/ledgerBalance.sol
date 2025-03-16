pragma solidity >=0.7.0 <0.9.0;

contract ledgerBalance {

    mapping (address => uint) balance;

    function updateBalance(uint newBalance) public {
        balance[msg.sender]= newBalance;
    }

      function getBalance ()public returns (uint) {
      return  balance[msg.sender];
    }


}

contract Updated{

    function updatesBalance() public {

        ledgerBalance LedgerBalance = new ledgerBalance();
        LedgerBalance.updateBalance(30);

    }
}