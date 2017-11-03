pragma solidity ^0.4.11;

library Rounding{
function roundNumber(uint _input, uint _basis, uint m ) returns (uint) {
      uint output;
      if (m > _basis){
          output = _input*10**(m - _basis);
      }
      else{
          output = _input/(10**(_basis - m - 1));
          uint lastOfOutput = takeTheLast(output);
          if (lastOfOutput >= 5) {
              output+= 10 - lastOfOutput;
          }
          output = output/10;
      }
      return output;
  }
  
    function takeTheLast(uint _input)returns (uint){
        return _input - (_input/10)*10;
  }
  
 }
