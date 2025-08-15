% Technical University of Munich (TUM)
% TUM School of Engineering and Design
% Institute for Machine Tools and Industrial Management (iwb)
% Markus Woerle, M.Sc.

% Closing all figures, clearing all variables, and clearing the command window
close all;
clear variables;
clc;

% Calling the function to analyze the susceptibility for hydrogen-induced material damage
[hydrogen_embrittlement_susceptibility,decarburization_susceptibility,high_temperature_corrosion_susceptibility] = susceptibility();