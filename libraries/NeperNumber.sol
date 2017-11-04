pragma solidity ^0.4.11;

contract Neper{
    
  function getNeperNumber(uint _accuracy) returns (uint) {
      uint sumN;
      uint sumNcheck = 1*10**_accuracy;
      uint diffStop = 1;
      for(uint i = 0; (sumNcheck - sumN) > diffStop ;i++){
          sumN += divideInt(1,factorial(i),_accuracy);
          sumNcheck = sumN + divideInt(1,factorial(i),_accuracy);
      }
      return sumN;
  }
  
  function divideInt(uint num, uint den, uint _base) returns (uint){
      return (num*10**(_base)) / den;
  }
  
  function factorial(uint _input) returns (uint){
      if (_input == 0){ 
          return 1;
      }
      else {
          return _input*(factorial(_input - 1));
      }
      
  }
  
}
