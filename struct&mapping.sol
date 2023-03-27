// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract schoolDetails{
    struct studentDetails{
        string name;
        uint id;
        bool passOrFail;
        uint marks;
    }
    studentDetails[] public students;
    mapping (uint => studentDetails) studnetmemo;
    function addstudentDetails( uint _id, string memory _name, uint _ID, bool _passOrFail, uint _marks) public{
       students.push( studnetmemo[_id]=studentDetails(_name,_ID,_passOrFail,_marks));
    }
    function get(uint _id) public view returns(studentDetails memory){
        return students[_id];
    }
    
}