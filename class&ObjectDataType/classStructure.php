<?php
    $employee_name = 'Shaoib';
    $employee_dob = '22/11/2002';
    $employee_gender = 'Male';
    $employee_designation = 'Junior Software Engineer';
    $employee_salary = '250000.00';

    echo "Employee Information: ";
    echo "Name: "    . $employee_name . "\n";
    echo "DOB: "     . $employee_dob  . "\n";
    echo "Gender: "  . $employee_gender  . "\n";
    echo "Designation: "  . $employee_designation  . "\n";
    echo "Salary: " .number_format($employee_salary,2,'-');
