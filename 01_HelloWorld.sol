pragma solidity ^0.4.0;



contract HelloWorldContract {

    string word = " Hello World ";


    
function getWord()public constant returns(string){

        return word;

    }

    
function setWord(string newWord)public returns(string){

        word = newWord;

        return word;

    }

}