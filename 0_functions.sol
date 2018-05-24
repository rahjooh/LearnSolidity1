pragma solidity ^0.4.0;

contract Functions {
    string public text = '';
    int public numberOfChanges = 0;
    
    function changeToHello()private{
        numberOfChanges += 1;
        text = 'Hello world !';
    }
    
     function changeToBye()private{
         numberOfChanges += 1;
        text = 'Bye world !';
    }
    
    function callChangeToHello(){
        if(numberOfChanges%2 ==0){
            changeToHello();
        }else{
           changeToBye();
        }
    }
}