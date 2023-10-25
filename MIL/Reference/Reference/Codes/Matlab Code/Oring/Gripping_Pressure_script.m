%use metric units

gravity = 9.81; 
bore_diameter = 0.0142875; %0.75" in meters
mu = 0.2; %educated guess
mass = 0.69; %mass of coin stack

Pressure_Pa = Gripping_Pressure(gravity, bore_diameter, mu, mass)

pressure_PSI = Pressure_Pa *  0.000145037738