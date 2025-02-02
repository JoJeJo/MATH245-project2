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
1/30/2025      Original         Jerom Jothiprakasam
2/1/2025        part(A)           Natalia Hopper
2/1/2025        part(B)         Jerom Jothiprakasam
2/1/2025        part(C)         Jerom Jothiprakasam
2/1/2025        part(D)         Jerom Jothiprakasam
%}

clc;
clear;

%% part (A)

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

%% part (B)

h1 = 0.001;                % Time Step
tFinal = 10;               % Final Time
timeVector1 = 0:h1:tFinal; % Time Inputs
N1 = length(timeVector1);  % Number of Time Steps

P1 = zeros(1, N1);
P1(1) = y0;                % Initial condition

for i = 1:N1-1
    P1(i+1) = P1(i) + h1 * r * P1(i);
end

figure;
hold on;
plot(timeVector1, P1, 'r-');


%% part (C)

h2 = 0.1;                  % Time Step
tFinal = 10;               % Final Time
timeVector2 = 0:h2:tFinal; % Time Inputs
N2 = length(timeVector2);  % Number of Time Steps

P2 = zeros(1, N2);
P2(1) = y0;                % Initial condition

for i = 1:N2-1
    P2(i+1) = P2(i) + h2 * r * P2(i);
end

plot(timeVector2, P2, 'b-');

h3 = 0.5;                  % Time Step
tFinal = 10;               % Final Time
timeVector3 = 0:h3:tFinal; % Time Inputs
N3 = length(timeVector3);  % Number of Time Steps

P3 = zeros(1, N3);
P3(1) = y0;                % Initial condition

for i = 1:N3-1
    P3(i+1) = P3(i) + h3 * r * P3(i);
end

plot(timeVector3, P3, 'g-');


h4 = 1;                    % Time Step
tFinal = 10;               % Final Time
timeVector4 = 0:h4:tFinal; % Time Inputs
N4 = length(timeVector4);  % Number of Time Steps

P4 = zeros(1, N4);
P4(1) = y0;                % Initial condition

for i = 1:N4-1
    P4(i+1) = P4(i) + h4 * r * P4(i);
end

plot(timeVector4, P4, 'c-');

xlabel('Time (t)');
ylabel('Population (P(t))');
grid on;
title('P(t) versus t Using Euler''s Method');
legend('P(t) h=0.001','P(t) h=0.1','P(t) h=0.5','P(t) h=1');

%% part(D)
   fprintf('The "exact" curve is considered to be the graph from\npart (b) where MATLAB solves the ODE function. All\nthe other graphs are approximations using Euler''s\nMethod. The exact solution is the graph with the step\nthat is closest to zero. So in our case the solution\nwhere h = 0.001 is the exact solution. As h increases\nthe graph becomes less steep.\n');