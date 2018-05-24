pragma solidity ^0.4.0;

contract PayCheck {
    address[] employees = [0xdd870fa1b7c4700f2bd7f44238821c26f7392148,0x14723a09acff6d2a60dcdf7aa4aff308fddc160c,0xca35b7d915458ef540ade6068dfe2f44e8fa733c,0x4b0897b0513fdc7c541b6d9d7e929c4e5364d2db,0x583031d1113ad414f02576bd6afabfb302140225];
    
    /* for checking how much money does this contract have */
    uint totalReceived = 0 ;
    
    /* some object like dictionary 
        amount of money that have the people has withdrawn */
    mapping (address => uint) withdrawAmounts ;
    
    
    /* for checking if the sender has enough money to transfer or does have */
    function withdraw() canWithdraw {
        uint amountallocated = totalReceived / employees.length ;
        uint amountWithdrawn = withdrawAmounts[msg.sender];
        uint amount = amountallocated - amountWithdrawn;
        withdrawAmounts[msg.sender] = amountWithdrawn + amount ;
        if (amount > 0){
            msg.sender.transfer(amount);
        }
    }
    
    
    /* Constructor */
    function PayCheck() payable {
        
    }
    
    /*default function : when someone send money this function will be able to receive that money*/
    function () payable {
        
    }
    
    /* a function for updating account
        its internal becouse we dont want anyone call it 
        it should run after anyone sends money */
    function updateTotal() internal{
        totalReceived += msg.value;
    }
    
    /* check if it is a valid employee */
    modifier canWithdraw(){
        bool contains = false;
        
        for(uint i=0 ; i < employees.length ; i++ ) {
            if (employees[i] == msg.sender){
                contains = true;
            }
        }
        require(contains);
        _;
    }
    
}