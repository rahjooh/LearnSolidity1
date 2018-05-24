pragma solidity ^0.4.0;

contract PayableContract {
    
    function PayableContract(){
        
    }
    
    function recieveFunds() payable {
        
    }
    
    function getBalance() constant returns(uint){
        return this.balance;
    }
}