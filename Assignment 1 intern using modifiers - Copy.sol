// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

    contract StudentData
    {
    struct Student{
        string Name;
        uint16 RollNum;
        uint8 Percentage;
    }
    mapping(uint16=>Student) StudentsMap;
    modifier check(uint16 roll, uint8 percent)
    {
        if(roll>0 && (percent>0 && percent<=100))
        _;
        else
            revert("Invalid entry");
    }
      
    function getstudent(string memory Stu_Name, uint16 Stu_RollNum, uint8 Stu_Percentage) public check(Stu_RollNum,Stu_Percentage)
    {
        StudentsMap[Stu_RollNum]= Student(Stu_Name,Stu_RollNum,Stu_Percentage); 
    }
    function getvalue(uint16 a) public view returns(Student memory){
        return StudentsMap[a];
    }
}
