import mysql.connector
mydb = mysql.connector.connect(host="localhost",user="root",passwd="rownak@123890",database="library_system")
mycursor = mydb.cursor()
mycursor.execute("Select * from student_details")
myresult = mycursor.fetchall()
for row in myresult:
    print(row)
