pragma solidity ^0.4.11;

library Arithm{
  
  function divideIntegersWithDecimal(uint num, uint den, uint m) returns (uint){ // m is the decimals #
      uint output;
      uint int_part = num/den;
      output = int_part*10**m;
      while(divReminder(num,den) != 0){
          num = divReminder(num,den)*10;
          while(num < den){
              num*=10;
              m-=1;
          }
          output += (num/den)*10**(m-=1);
      }
      return output;
  }
  
  function divReminder(uint num, uint den) returns (uint) {
     if(num/den == 0) {
         return num;
     } else {
         return num-(num/den)*den;
     }
  }
  
  function factorial(uint _input) returns (uint){
      if (_input == 0){ 
          return 1;
      }
      else {
          return _input*(factorial(_input - 1));
      }
      
  }
  
  function len(uint _input)  returns (uint){ 
      bytes memory b = bytes(uintToString(_input));
      return b.length-1;
  }
 
 function getMin(uint _x1, uint _x2) returns (uint){
  return  _x1 < _x2 ? _x1 : _x2;    
  }
  
  function getMax(uint _x1, uint _x2) returns (uint){
      if (_x1 >= _x2) {
          return _x1;
      }
      else{
          return _x2;   
      } 
  }
  
 //FUNZIONE DA RIVEDERE REFACTOR
  function uintToString(uint v) constant returns (string str) {
        uint maxlength = 100;
        bytes memory reversed = new bytes(maxlength);
        uint i = 0;
        while (v != 0) {
            uint remainder = v % 10;
            v = v / 10;
            reversed[i++] = byte(48 + remainder);
        }
        bytes memory s = new bytes(i + 1);
        for (uint j = 0; j <= i; j++) {
            s[j] = reversed[i - j];
        }
        str = string(s);
    }
}
