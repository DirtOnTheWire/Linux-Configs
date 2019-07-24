#import libraries. note that I'm running python 2.7 in windows 7.
import win32api, win32con
import time

#defining what a click means
def leftClick():
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN,0,0)
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP,0,0)

#this puts the clicks in an infinite loop. I used a slight pause between clicks (1/40th of a second) so my computer wouldn't lag. scale accordingly depending on your computer.
def clickLoop():
    while True:
        leftClick()
        time.sleep(.025)