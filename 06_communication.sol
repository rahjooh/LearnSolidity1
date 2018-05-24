pragma solidity ^0.4.0;

contract CallerContract {
    CalledContract toBeCalled = CalledContract(0xa6f999ccf5902961ec63b40147ad380132033064);
    
    function getNumber() constant returns(uint){
        return toBeCalled.getNumber();
    }
}

contract CalledContract {
    uint number = 300 ;
    
    function getNumber() constant returns(uint){
        return number;
    }
}