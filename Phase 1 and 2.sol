// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract StudentData{
    struct Student{
        string Name;
        uint16 RollNum;
        uint8 Percentage;
    }
    mapping(uint16=>Student) StudentsMap;
    function getstudent(string memory Stu_Name, uint16 Stu_RollNum, uint8 Stu_Percentage) public{
        
        require(Stu_RollNum>0, "Invalid"); // checking Roll num
        require(Stu_Percentage>0 && Stu_Percentage<100, "Enter valid percentage"); // checking Percentage
        StudentsMap[Stu_RollNum]= Student(Stu_Name,Stu_RollNum,Stu_Percentage);
        
    }
    function getvalue(uint16 a) public view returns(Student memory){
        return StudentsMap[a];
    }
}