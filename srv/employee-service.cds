using my.demo.employeeapp as emp from '../db/schema.cds';

service EmployeeService { 
    @odata.draft.enabled: true
    entity Employee as projection on emp.Employee;
    entity Skills as projection on emp.Skills;
    entity Projects as projection on emp.Projects;
}