pragma solidity ^0.4.0;

contract Hello2Contract {
    string word = " Hello World ";
    address  owner ;
    
    function HelloContract(){
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        if(owner != msg.sender && owner != 0x0000000000000000000000000000000000000000){
            throw;
        }else{
            _;
        }
    }
    
    function getWord()public constant returns(string){
        return word;
    }
    
    function setWord(string newWord) onlyOwner returns(string){
        word = newWord;
        return 'You succesfully changed the variable word';
    }
    
}