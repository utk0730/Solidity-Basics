// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CustomDataType{
    struct Employee{
        string name;
        string empid;
        uint8 age;
        uint8[] deptsId;
    }

    Employee public employee;
    Employee[] employees;

    function addEmployee(string memory _name, string memory _empid, uint8 _age,uint8 _deptId ) public {
        employee.name = _name;
        employee.empid = _empid;
        employee.age = _age;
        employee.deptsId.push(_deptId);
        employees.push(employee);

    }
    function readEmployees(uint idx) public view returns(Employee memory){
        return employees[idx];

    }
}