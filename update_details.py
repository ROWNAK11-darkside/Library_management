import mysql.connector
mydb = mysql.connector.connect(host="localhost",user="root",passwd="rownak@123890",database="library_system")
mycursor = mydb.cursor()
sql = "UPDATE student_details SET Department = 'IT' WHERE student_Name='Rohan Patil'"
mycursor.execute(sql)
mydb.commit()
