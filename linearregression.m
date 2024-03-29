%Implements a basic linear regression on some random numbers
clear;
clc;
N = 4;
x= (1:N).';
y = 0; % declaring early for larger scope

display('1: not very random');
display('2: super random');
switch input('How random do you want this to be?')
    case 1 % not very random
        Maxerror=3;
        error = Maxerror*(rand(size(x))-0.5*(ones(size(x))));
        slope = 3;
        intercept = 1;
        y = (3 + rand-0.5)*x + error + intercept*ones(size(x));
    case 2 % super random
        for k = 1:N
            y(k) = rand*N*3;
        end
end
polycoeff = (polyfit(x,y,1)); % polynomial curve fitting
yguess = polyval(polycoeff,x); % computing the expected y-values
plot(x,y,'.',x,yguess)

