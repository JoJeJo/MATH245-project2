%{
MATH 245 MATLAB 2 PART 1
_____________________
Jerom Jothiprakasam
jothipra@usc.edu

Natalia Hopper
nhopper@usc.edu
_______________________________________
Revision History
Date            Changes             Programmer
---------------------------------------------------------
01/30/2025      Original        Jerom Jothiprakasam
02/01/2025     Q1,part(A)         Natalia Hopper
02/01/2025     Q1,part(B)       Jerom Jothiprakasam
%}

clc;
clear;

%% part (a)

tSpan = [0 10]; % Time interval [0, 10]
y0 = 2; % Initial Population
r =  0.693; % Reproductive Rate
[t,y] = ode45(@(t,y) r*y, tSpan, y0); % Solves the ODE as t v. y

figure;
plot(t,y,'-o'); % Plots the ODE solution, adds circles at points on graph

% Add graph axis labels
xlabel('P(t) - Population');
ylabel('t - time');
title('P(t) versus t');

%% part (b)

h = 0.001;               % Time Step
tFinal = 10;             % Final Time
timeVector = 0:h:tFinal; % Time Inputs
N = length(timeVector);  % Number of Time Steps

P = zeros(1, N);
P(1) = y0;               % Initial condition

for i = 1:N-1
    P(i+1) = P(i) + h * r * P(i);
end

figure;
plot(timeVector, P, 'r-');
xlabel('Time (t)');
ylabel('Population (P(t))');
title('P(t) versus t Using Euler''s Method');
