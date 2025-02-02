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
K = 100;                    %carrying capacity
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
plot(timeVector, P, 'r');
xlabel('Time (t)');
ylabel('Population (P(t))');
title('P(t) versus t Using Euler''s Method');

%% part (d)
hold on;

% Changing to h = 0.1
h2 = 0.1;               % Time Step
timeVector2 = 0:h2:tFinal; % Time Inputs
N2 = length(timeVector2);  % Number of Time Steps

P2 = zeros(1, N2);
P2(1) = y0;               % Initial condition

for i = 1:N2-1            
    P2(i+1) = P2(i) + h2 * r * P2(i)*(1-P2(i)/K);
end

plot(timeVector2, P2, 'color','#c223d8');


% Changing to h = 0.5
h3 = 0.5;               % Time Step
timeVector3 = 0:h3:tFinal; % Time Inputs
N3 = length(timeVector3);  % Number of Time Steps

P3 = zeros(1, N3);
P3(1) = y0;               % Initial condition

for i = 1:N3-1            
    P3(i+1) = P3(i) + h3 * r * P3(i)*(1-P3(i)/K);
end

plot(timeVector3, P3,'color', '#ff4fe3');


% Changing to h = 1
h4 = 1.0;               % Time Step
timeVector4 = 0:h4:tFinal; % Time Inputs
N4 = length(timeVector4);  % Number of Time Steps

P4 = zeros(1, N4);
P4(1) = y0;               % Initial condition

for i = 1:N4-1            
    P4(i+1) = P4(i) + h4 * r * P4(i)*(1-P4(i)/K);
end

plot(timeVector4, P4, 'Color','#a01b8b');

hold off;

legend('P(t) - h=0.001','P(t) - h=0.1','P(t) - h=0.5','P(t) - h=1','Position',[0.2 0.6 0.1 0.2]);

%% part (e) -- Compare the graphs
%{
The "exact" curve is considered to be the graph from part (b) where
MATLAB solves the ODE function. All the other graphs are approximations
using Euler's Method. 
%}
%{
As 'h' decreases in value, and the time-steps become closer together, the
accuracy of the graph increases. As such, the graphs become closer and
closer to that of the "exact" curve. In this case, as 'h' becomes smaller,
the graphs begin to look more like the graph from part (b).
%}
