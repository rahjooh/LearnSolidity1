pragma solidity ^0.4.0;


contract Calculator {
    Math math = new Math();
    /*Math math  =  Math(0xba4ac38bda8f394f7ae9bae948b384b0bb9eb83b)*/
    
    function twoPlusFour() constant returns(int){
        return math.add(2,4);
    }
    
    function twoTimesFour()constant returns(int){
        return math.multiply(2,4);
    }
}
contract Math {
    function add (int a , int b )returns(int){
        return a+b;
    }
    
    function multiply (int a , int b )returns(int){
        return a*b;
    }
}