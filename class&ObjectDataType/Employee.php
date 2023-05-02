<?php
class Employee{
    //
public $employee_name = '';
public $employee_dob = '';
public $employee_gender = '';
public $employee_designation = '';
public $employee_salary = '0.00';
}
$employees = []; // Declare Array

$emp = new Employee();
$emp->employee_name = 'shoaib';
$emp->employee_dob = '22/12/2002';
$emp->employee_gender = 'Male';
$emp->employee_designation = 'Software Engineer';
$emp->employee_salary = 130000;
$employees[] = $emp;
$emp->employee_name = 'Rahat';
$emp->employee_dob = '11/05/2001';
$emp->employee_gender = 'Male';
$emp->employee_designation = 'Content Writer';
$emp->employee_salary = 120000;
$employees[] = $emp;

foreach($employees as $employee){
    echo "Employee Information";
    echo "Name: " . $emp->employee_name . "\n";
    echo "DOB: " . $emp->employee_dob . "\n";
    echo "Gender: " . $emp->employee_gender ."\n";
    echo "Designation: " . $emp->employee_designation . "\n";
    echo "Salary: " . number_format($emp->employee_salary,2,'.',',');
    echo "\n";
}