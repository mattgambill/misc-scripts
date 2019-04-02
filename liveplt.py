import time
#import psutil
import matplotlib.pyplot as plt
from multiprocessing import Process


fig = plt.figure()
ax = fig.add_subplot(111)
fig.show()



state = 1

def writeDAC():
    global state
    print("writeDAC started...\n")
    
    print("from writeDAC state is:",state)

    while True:
        state = 0
        print("from writeDAC state is now",state,"\n")
        time.sleep(2)
        state = 1
        print("from writeDAC state is now",state,"\n")
        time.sleep(2)

def plotState():
    i = 0
    x, y = [], []
    global state
    
    print("From plotState state =",state)

    while True:
        x.append(i)
        y.append(state)
    
    
        ax.plot(x, y, color='b')
    
        fig.canvas.draw()
    
        ax.set_xlim(left=max(0, i-50), right=i+50)
    
        time.sleep(0.1)
        i += 1

    plt.close()


if __name__ == '__main__':
    print(state)
    print('\n')
    p1 = Process(target=writeDAC)
    p2 = Process(target=plotState)
    p2.start()
    p1.start()
    p1.join()
    p2.join()

