import tkinter as tk
from tkinter import*
import time

root = tk.Tk()
root.title('Clock')
root.geometry("700x600")
root.resizable(False, False)

def am():
   am = time.strftime("%p")

   pa.config(text=am)
   pa.after(1000, am)

def date():
    date = time.strftime("%x")

    date_shown.config(text=date)
    date_shown.after(1000, date)

def clock():
   hour = time.strftime("%I")
   minute = time.strftime("%M")
   second = time.strftime("%S")

   clock_face.config(text=hour+":"+minute+":"+second)
   clock_face.after(1000, clock)
    

def update():
    clock_face.config(root, text= "GG")



clock_face = Label(root, text= 'KK', font='Orbitron', bg='cyan', fg='black')
clock_face.grid(column=16, row=6)

date_shown = Label(root, text="k", font='Orbitron', bg='cyan', fg='black')
date_shown.grid(column=16, row=8)

pa = Label(root, text='k', font='Helvectica')
pa.grid(column=17, row=6)


clock_face.after(1000, clock)

col_count, row_count = root.grid_size()

for col in range(col_count):
    root.grid_columnconfigure(col, minsize=20)

for row in range(row_count):
    root.grid_rowconfigure(row, minsize=20)



clock()
date()
am()