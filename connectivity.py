import mysql.connector as c
con = c.connect(host="localhost" , user="root" , passwd="rownak@123890" , database="library_system")
if con.is_connected():
    print("Sucessfully Connected")

else:
    print("Not Connected")
