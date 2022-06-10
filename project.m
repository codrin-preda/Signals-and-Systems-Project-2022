
[y11,x1] = impuls(0, 10, 0.01, 4);
[y12,x1] = impuls(0, 10, 0.01, 5);
[y13,x1] = impuls(0, 10, 0.01, 6);
[y14,x1] = impuls(0, 10, 0.01, 7);
y1=(-3)*y11-5*y12-5*y13+5*y14;
plot(x1,y1), xlabel('time'), ylabel('x1'), grid 


[y21,x2] = step1(-16,4,0.01,-14);
[y22,x2] = step1(-16,4,0.01,-3);
[y23,x3] = step1(-16,4,0.01,-2);
y2=3*y21+y22-4*y23;
plot(x2,y2), xlabel('time'), ylabel('x2')


conv12=conv(y1,y2);
xconv12=-(0+16):0.01:(10+4);
plot(xconv12,conv12),xlabel('timp'),ylabel('(x1*x2)(t)'); grid


function [y,x] = impuls(li,ls,step,k)
%IMPULS – the unit (Dirac) impulse in discrete time, %defined on a finite temporal support
% Output parameters:
%  y = delta(n-k) (line vector) on the support li:step:ls
%  n = temporal support li:step:ls (line vector)
% Input parameters:
%  li = the inferior limit of the temporal support;
%  ls = the superior limit of the temporal support;
%  Step = the step in time domain 
% k = the index from delta(n-k)
%!!!Condition Li<k<Ls

x=li:step:ls;
L = length(x);
y = zeros(1,L);
y((k-li)/step) = 1;

end

function [y,x] = step1(li,ls,step,k)
%ste – the unit S, %defined on a finite temporal support
% Output parameters:
%  y = delta(n-k) (line vector) on the support li:ste:ls
%  n = temporal support li:ste:ls (line vector)
% Input parameters:
%  li = the inferior limit of the temporal support;
%  ls = the superior limit of the temporal support;
%  ste = the ste in time domain 
% k = the index from delta(n-k)
%!!!Condition Li<k<Ls

x=li:step:ls;
L = length(x);
y = zeros(1,L);
start=(k-li)/step;
y((start+1):L)=ones(size((start+1):L));

end