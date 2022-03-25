// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract First
    {
        uint age;
        event ageRead(uint);
function updateage(uint _age) public{
      age=_age;
      emit ageRead(age);
}
        
    }