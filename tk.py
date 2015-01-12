#!/usr/bin/env python
from tkinter import Tk, BOTH, Frame, Button

class Example(Frame):
    def __init__(self, parent):
        Frame.__init__(self, parent)
        self.parent = parent
        self.initUI()
        
    def initUI(self):
        self.parent.title('金坷垃，不流失，不蒸发')
        self.pack(fill=BOTH, expand=1)
        quitButton = Button(self, text='金坷垃',
            command=self.quit)
        quitButton.place(x=100, y=50)

def main():
    root = Tk()
    root.geometry('320x160')
    app = Example(root)
    root.mainloop()

if __name__ == '__main__':
    main()  
