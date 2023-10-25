function [ pressure,gripping_force ] = Gripping_Pressure(gravity, bore_diameter, mu, mass )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    downward_force = mass*gravity;
    gripping_force = downward_force / mu;
    
    area = pi*(bore_diameter/2)^2; 
    pressure = gripping_force / area; 
end

