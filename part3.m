%{
MATH 245 MATLAB 2 PART 2
_____________________
Jerom Jothiprakasam
jothipra@usc.edu

Natalia Hopper
nhopper@usc.edu
_______________________________________
Revision History
Date            Changes             Programmer
---------------------------------------------------------
1/30/2025      Original         Jerom Jothiprakasam
2/09/2025      Parts (a,b)      Natalia Hopper
2/09/2025      Part (c)         Jerom Jothiprakasam
%}

clc;
clear;

%% Part (a)

%{ 
Initial value problem for number of visitors on the island:

x'(t) = (3)(500) - (10)(x)/(100-5t) - 10(t + 1/(1+t))
x(0) = 10,000  (visitors)
%}


%% Part (b)


tSpan = [0 15]; % Define time span
x0 = 10000; % Initial number of visitors is 10,000

[t, x] = ode45(@(t,x) 1500 - 10*(t + 1/(1+t)) - x.*(10/(100-5*t)), tSpan, x0);
% Graph the solution

figure;
plot(t,x,'-o'); % Graph the solution versus time 

% Add graph axis labels
xlabel('x(t) - Number of Visitors');
ylabel('t - time in hours');
title('x(t) versus t');

%% Part (c)


%% Part (d)



%% Part (e)
%{
Comparison of parts c, d, and b:

The graphs in parts (c) and (d) follow the same general curve of the
graph in part (b). Part b is considered to be the "exact" graph because the
ode function solves the ode exactly. Euler's Method is used as an
approximation for the solution. 

As the time-step decreases, the graph becomes more similar to the solution
of part (b). This is because the accuracy increases. 
%}

