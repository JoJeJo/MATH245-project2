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
2/1/2025        part (b)        Natalia Hopper
%}

clc;
clear;

%% part (b)

tSpan = [0 10];            % Time interval [0, 10]
y0 = 2;                    % Initial Population
r =  0.693;                % Reproductive Rate
K = 200;                    %carrying capacity
[t,y] = ode45(@(t,y) r*y*(1-y/K), tSpan, y0); % Solves the ODE as t v. y

figure;
plot(t,y,'-o'); % Plots the ODE solution, adds circles at points on graph

% Add graph axis labels
xlabel('P(t) - Population');
ylabel('t - time');
title('P(t) versus t');

%% part (c)

h = 0.001;               % Time Step
tFinal = 10;             % Final Time
timeVector = 0:h:tFinal; % Time Inputs
N = length(timeVector);  % Number of Time Steps

P = zeros(1, N);
P(1) = y0;               % Initial condition

for i = 1:N-1            
    P(i+1) = P(i) + h * r * P(i)*(1-P(i)/K);
end

figure;
plot(timeVector, P, 'r-');
xlabel('Time (t)');
ylabel('Population (P(t))');
title('P(t) versus t Using Euler''s Method');

hold on;

% Changing to h = 0.01
h2 = 0.00001;               % Time Step
timeVector2 = 0:h2:tFinal; % Time Inputs
N2 = length(timeVector2);  % Number of Time Steps

P2 = zeros(1, N2);
P2(1) = y0;               % Initial condition

for i2 = 1:N2-1            
    P2(i2+1) = P2(i2) + h * r * P2(i2)*(1-P2(i2)/K);
end

plot(timeVector2, P2, 'g-');

%h3 = 0.001;               % Time Step

%h4 = 0.001;               % Time Step





