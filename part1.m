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
2/1/2025       Q1,part(a)         Natalia Hopper
%}

clc;
clear;

%% Question 1 -- Malthusian Model

% part (a) 

tspan = [0 10]; % Time interval [0, 10]
y0 = 2; % P0 = 2
[t,y] = ode45(@(t,y) 0.693*y, tspan, y0); % Solves the ODE as t v. y

plot(t,y,'-o'); % Plots the ODE solution, adds circles at points on graph

% Add graph axis labels
xlabel('P(t) - Population');
ylabel('t - time');
title('P(t) versus t'); 

% part (b)
