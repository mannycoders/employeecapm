namespace my.demo.employeeapp;
using { managed,cuid } from '@sap/cds/common';

entity Employee : cuid,managed
{
    EMPLOYEE_ID: UUID;
    first_name : String(111) @mandatory;
    last_name : String(111);
    assignedTo : String(111) @mandatory;
    key email : String(111) @mandatory;
    contact : String(111);
    projects : Association to one Projects @mandatory;
    SKILLS : Composition of many SKILLS on SKILLS.skillID = $self @mandatory;
}

entity Projects : cuid,managed
{
    key projectName : String(111) @mandatory;
    projectDescription : String(1111);
    employee : Association to many Employee on employee.projects = $self;
}

entity SKILLS : cuid,managed
{
    key skillID : Association to Employee;
    skillName : String(111) @mandatory;
    skillDescription : String(1111);
}
