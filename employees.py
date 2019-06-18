import sqlite3
from employee import Employee

#a connection object that represents the database
#param: pass in a file or in-memory
conn = sqlite3.connect('employee.db')

c = conn.cursor()

#sql has different datatypes 
#NULL, INTEGER, REAL, TEXT, BLOB"

emp_1 = Employee('John', 'Doe', 8000)
emp_2 = Employee('John', 'Saga', 8000)

#use context manager for commits
def insert_emp(emp):
    with conn:
        c.execute("INSERT INTO employees VALUES(?,?,?)",(emp.first, emp.last, emp.pay))

def get_emps_by_name(lastname):
    c.execute('SELECT * FROM employees WHERE last =?',(lastname,))


insert_emp(emp_1)
insert_emp(emp_2)

conn.close
#c.execute("""CREATE TABLE employees (
  #  first text,
  #  last text,
  #  pay integer
  #  )""")

"""need to use tuples even just one value"""
conn.commit()

"""dictionary method"""
c.execute("INSERT INTO employees VALUES(:first,:last,:pay)",
{'first': emp_2.first, 'last': emp_2.last, 'pay': emp_2.pay})
conn.commit()


#c.execute('INSERT INTO employees VALUES("Jane", "Smith",5000)')

print(c.fetchone()) #get the next row in the result 
#c.fetchmany(5) return the rows as a list
#c.fetchall()  returns a list 

#commiting the changes, then you can comment out the code
conn.commit()

#good practice to close
conn.close()