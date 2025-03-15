pragma solidity >=0.7.0 <0.9.0;


contract airdropwallet{
    uint stakingwallet = 8;

    function airdrop() public view returns(uint){
        if (stakingwallet == 10)
        {
        return  stakingwallet+10;
        }

        else {
                  return  stakingwallet+1;
        }
    }

}