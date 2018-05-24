pragma solidity ^0.4.0;

contract HelloContract {
    string word = " Hello World ";
    address owner ;
    
    function HelloContract(){
        owner = msg.sender;
    }
    
    function getWord()public constant returns(string){
        return word;
    }
    
    function setWord(string newWord) returns(string){
        if(owner != msg.sender){
            return "You shall not pass !";
        }
        word = newWord;
        return 'You succesfully changed the variable word';
    }
}