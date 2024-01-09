CREATE TABLE "Dept_Emp" (
    "employee_no" INT   NOT NULL,
    "deputy_no" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Dept_Emp" PRIMARY KEY (
        "employee_no","deputy_no"
     )
);

CREATE TABLE "Departments" (
    "deputy_no" VARCHAR(4)   NOT NULL,
    "deputy_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "deputy_no"
     )
);

CREATE TABLE "Dept_Manager" (
    "deputy_no" VARCHAR   NOT NULL,
    "employee_no" INT   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "deputy_no","employee_no"
     )
);

CREATE TABLE "Employees" (
    "employee_no" INT   NOT NULL,
    "employee_title_ID" VARCHAR(5)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
   	CONSTRAINT "pk_Employees" PRIMARY KEY (
        "employee_no"
     )
);

CREATE TABLE "Salaries" (
    "employee_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "employee_no"
     )
);

CREATE TABLE "Titles" (
    "Title_ID" VARCHAR(5)   NOT NULL,
    "Title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_ID"
     )
);
