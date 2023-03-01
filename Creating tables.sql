--create employees table
create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id varchar(10) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	sex varchar(5) NOT NULL,
	hire_date date NOT NULL
);

-- Create departments table
create table departments (
	dept_no VARCHAR(8) primary key NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);

-- Create dept_emp table
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
	foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

-- create dept_manager table
create table dept_manager (
	dept_no VARCHAR(8) NOT NULL,
	emp_no INT NOT NULL,
	foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

-- Create salaries table
create table salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);

-- Create titles table
create table titles(
	title_id varchar(10) NOT NULL,
	title varchar(20) NOT NULL,
    foreign key (emp_no) references employees (emp_no)

);