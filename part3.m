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
2/09/2025      Part (A)         Natalia Hopper
2/09/2025      Part (B)         Natalia Hopper
2/09/2025      part (C)         Jerom Jothiprakasam
2/09/2025      part (D)         Jerom Jothiprakasam
2/09/2025      Part (E)         Natalia Hopper
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
xlabel('Time (hours)');
ylabel('Number of Visitors');

%% part (c)
h = 0.1;                 % Time Step
tFinal = 15;             % Final Time
timeVector = 0:h:tFinal; % Time Inputs
N = length(timeVector);  % Number of Time Steps
P = zeros(1, N);

P(1) = 10000;               % Initial condition

for i = 1:N-1
    t = timeVector(i);
    P(i+1) = P(i) + h * (1500 - 10*(t + 1/(1+t)) - P(i)*(10/(100-5*t)));
end

figure;
plot(timeVector, P, 'r');
xlabel('Time (hours)');
ylabel('Number of Visitors');

%% part (d)


h2 = 0.25;                  % Time Step
tFinal = 15;                % Final Time
timeVector = 0:h2:tFinal;   % Time Inputs
N2 = length(timeVector);    % Number of Time Steps
P2 = zeros(1, N2);

P2(1) = 10000;               % Initial condition

for i = 1:N2-1
    t2 = timeVector(i);
    P2(i+1) = P2(i) + h2 * (1500 - 10*(t2 + 1/(1+t2)) - P2(i)*(10/(100-5*t2)));
end

figure;
hold on;
plot(timeVector, P2, 'g');
xlabel('Time (hours)');
ylabel('Number of Visitors');

h3 = 0.5;                 % Time Step
tFinal = 15;             % Final Time
timeVector = 0:h3:tFinal; % Time Inputs
N3 = length(timeVector);  % Number of Time Steps
P3 = zeros(1, N3);

P3(1) = 10000;               % Initial condition

for i = 1:N3-1
    t3 = timeVector(i);
    P3(i+1) = P3(i) + h3 * (1500 - 10*(t3 + 1/(1+t3)) - P3(i)*(10/(100-5*t3)));
end

plot(timeVector, P3, 'm');
xlabel('Time (hours)');
ylabel('Number of Visitors');

h4 = 1;                 % Time Step
tFinal = 15;             % Final Time
timeVector = 0:h4:tFinal; % Time Inputs
N4 = length(timeVector);  % Number of Time Steps
P4 = zeros(1, N4);

P4(1) = 10000;               % Initial condition

for i = 1:N4-1
    t4 = timeVector(i);
    P4(i+1) = P4(i) + h4 * (1500 - 10*(t4 + 1/(1+t4)) - P4(i)*(10/(100-5*t4)));
end

plot(timeVector, P4, 'b');
xlabel('Time (hours)');
ylabel('Number of Visitors');

hold off;

legend('P(t) - h=0.1','P(t) - h=0.25','P(t) - h=0.5','P(t) - h=1');

%% part (e)
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
2/09/2025       Parts (a,b)        Natalia Hopper
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

%% part (c)
h = 0.1;                 % Time Step
tFinal = 15;             % Final Time
timeVector = 0:h:tFinal; % Time Inputs
N = length(timeVector);  % Number of Time Steps
P = zeros(1, N);

P(1) = 10000;               % Initial condition

for i = 1:N-1
    t = timeVector(i);
    P(i+1) = P(i) + h * (1500 - 10*(t + 1/(1+t)) - P(i)*(10/(100-5*t)));
end

figure;
plot(timeVector, P, 'r');
xlabel('Time (hours)');
ylabel('Number of Visitors');

%% part (d)


h2 = 0.25;                  % Time Step
tFinal = 15;                % Final Time
timeVector = 0:h2:tFinal;   % Time Inputs
N2 = length(timeVector);    % Number of Time Steps
P2 = zeros(1, N2);

P2(1) = 10000;               % Initial condition

for i = 1:N2-1
    t2 = timeVector(i);
    P2(i+1) = P2(i) + h2 * (1500 - 10*(t2 + 1/(1+t2)) - P2(i)*(10/(100-5*t2)));
end

figure;
hold on;
plot(timeVector, P2, 'g');
xlabel('Time (hours)');
ylabel('Number of Visitors');

h3 = 0.5;                 % Time Step
tFinal = 15;             % Final Time
timeVector = 0:h3:tFinal; % Time Inputs
N3 = length(timeVector);  % Number of Time Steps
P3 = zeros(1, N3);

P3(1) = 10000;               % Initial condition

for i = 1:N3-1
    t3 = timeVector(i);
    P3(i+1) = P3(i) + h3 * (1500 - 10*(t3 + 1/(1+t3)) - P3(i)*(10/(100-5*t3)));
end

plot(timeVector, P3, 'm');
xlabel('Time (hours)');
ylabel('Number of Visitors');

h4 = 1;                 % Time Step
tFinal = 15;             % Final Time
timeVector = 0:h4:tFinal; % Time Inputs
N4 = length(timeVector);  % Number of Time Steps
P4 = zeros(1, N4);

P4(1) = 10000;               % Initial condition

for i = 1:N4-1
    t4 = timeVector(i);
    P4(i+1) = P4(i) + h4 * (1500 - 10*(t4 + 1/(1+t4)) - P4(i)*(10/(100-5*t4)));
end

plot(timeVector, P4, 'b');
xlabel('Time (hours)');
ylabel('Number of Visitors');

hold off;

legend('P(t) - h=0.1','P(t) - h=0.25','P(t) - h=0.5','P(t) - h=1');

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
