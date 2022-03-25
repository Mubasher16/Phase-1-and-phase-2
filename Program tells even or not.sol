// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract StudentData
    {
    //int num;
    modifier even(int a){
            if(a%2==0)
             _;

    }
    function teller(int b) public view even(b) returns(bool){

          return true;
 }

    }