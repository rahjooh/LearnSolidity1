pragma solidity ^0.4.0;

contract DummyContract {
    string word;
    uint number;
    address owner;
    
    function DummyContract(string _word)public{
        word =_word;
        number = 42 ;
        owner = msg.sender;
    }
    
    event Changed(address a);
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    function getWord()public constant returns(string){
        return word;
    }
    
    function setWord(string w)public onlyOwner{
        word = w;
        Changed(msg.sender);
    }
}