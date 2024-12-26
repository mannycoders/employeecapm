using {managed} from '@sap/cds/common';

namespace my.demo.employeeapp;

entity Employee : managed {
    key employee_id : Integer;
        first_name  : String(111);
        last_name   : String(111);
        skills      : String(111);
        assignedTo  : String(111);
        email       : String(111);
        contact     : String(111);
}

entity Projects : managed {
    key ID                 : Integer;
        projectName        : String(111);
        projectDescription : String(1111);
}

entity Skills : managed {
    key ID                 : Integer;
        skillName        : String(111);
        skillDescription : String(1111);
}
