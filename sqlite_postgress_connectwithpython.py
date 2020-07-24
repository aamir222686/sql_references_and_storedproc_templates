#import sqlite3
'''
sqlite3 uses similar syntax except some differences in string substitution and the way its connected to.
sqlite3 differentiated code is commented inline with postgress.
'''
import psycopg2

def create_table():
    conn = psycopg2.connect("dbname='database1' user='postgres' password='admin' host='localhost' port='5432'")
    #conn = sqlite3.connect("lite.db") #sqllite creates a new db if not created locally
    cur = conn.cursor()
    cur.execute("CREATE TABLE IF NOT EXISTS store (item TEXT, quantity INTEGER, price REAL)")
    conn.commit()
    conn.close()
    

def insert(item, quantity, price):
    conn = psycopg2.connect("dbname='database1' user='postgres' password='admin' host='localhost' port='5432'")
    cur = conn.cursor()
    cur.execute("INSERT INTO store VALUES (%s,%s,%s)",(item, quantity, price))
    #cur.execute("INSERT INTO store VALUES (?,?,?)",(item, quantity, price))
    conn.commit()
    conn.close()
    
    
def view():
    conn = psycopg2.connect("dbname='database1' user='postgres' password='admin' host='localhost' port='5432'")
    cur = conn.cursor()
    cur.execute("SELECT * FROM store")
    rows = cur.fetchall()
    conn.commit()
    conn.close()
    return rows

def delete(item):
    conn = psycopg2.connect("dbname='database1' user='postgres' password='admin' host='localhost' port='5432'")
    cur = conn.cursor()
    cur.execute("DELETE FROM store WHERE item=%s", (item,))
    #cur.execute("DELETE FROM store WHERE item=?", (item,))
    conn.commit()
    conn.close()
    
def update(quantity, price, item):
    conn = psycopg2.connect("dbname='database1' user='postgres' password='admin' host='localhost' port='5432'")
    cur = conn.cursor()
    cur.execute("UPDATE store SET quantity=%s, price=%s WHERE item=%s",(quantity, price, item))
    #cur.execute("UPDATE store SET quantity=?, price=? WHERE item=?",(quantity, price, item))
    conn.commit()
    conn.close()
    
