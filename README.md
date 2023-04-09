# Signals-and-Systems-Project-2022
README
Overview
This MATLAB file contains two functions impuls and step1, which generate unit impulse and step signals, respectively. These functions can be used to create and plot various signals.

Functions
impuls
impuls is a function that generates a unit impulse signal defined on a finite temporal support. The output parameters of this function are y and x, which represent the signal and temporal support, respectively. The input parameters of this function are li, ls, step, and k, which represent the inferior limit of the temporal support, the superior limit of the temporal support, the step in time domain, and the index from delta(n-k), respectively.

step1
step1 is a function that generates a unit step signal defined on a finite temporal support. The output parameters of this function are y and x, which represent the signal and temporal support, respectively. The input parameters of this function are li, ls, step, and k, which represent the inferior limit of the temporal support, the superior limit of the temporal support, the step in time domain, and the index from delta(n-k), respectively.

Usage
To use the impuls and step1 functions, simply call them with the desired input parameters. For example, to generate four impulse signals with different delays and subtract them from each other, you can use the following code:

[y11,x1] = impuls(0, 10, 0.01, 4);
[y12,x1] = impuls(0, 10, 0.01, 5);
[y13,x1] = impuls(0, 10, 0.01, 6);
[y14,x1] = impuls(0, 10, 0.01, 7);
y1=(-3)*y11-5*y12-5*y13+5*y14;
plot(x1,y1), xlabel('time'), ylabel('x1'), grid 

Similarly, to generate three step signals with different delays and combine them, you can use the following code:

[y21,x2] = step1(-16,4,0.01,-14);
[y22,x2] = step1(-16,4,0.01,-3);
[y23,x3] = step1(-16,4,0.01,-2);
y2=3*y21+y22-4*y23;
plot(x2,y2), xlabel('time'), ylabel('x2')

To convolve two signals generated using the impuls and step1 functions, you can use the conv function in MATLAB. Here is an example code that convolves the y1 and y2 signals:


conv12=conv(y1,y2);
xconv12=-(0+16):0.01:(10+4);
plot(xconv12,conv12),xlabel('timp'),ylabel('(x1*x2)(t)'); grid
