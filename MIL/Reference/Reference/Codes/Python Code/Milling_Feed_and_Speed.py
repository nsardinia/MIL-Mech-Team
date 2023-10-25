import math
import numpy as np

print("Milling Feed and Speed Calculator" + '\n');
print("Source: EML2322L MAE Design and Manufacturing Laboratory Milling Speeds and Feed");
print("Note: base units are inches, rpm, seconds. Unless otherwise noted" + '\n');

#SFM Recommedantion for HSS Tool in ft/min
#Multiply by 2.5 for Carbide Tool
#Aluminum = 250 
#Stainless Steel Free Machining = 40
#Stainless Steel Work Hardened  = 20
#Bronze = 100 

#User input
tool_diameter = .5; #in
surface_speed = 250; #ft/min for aluminum
tooth = 4; #number of tooth or flute

#from table 3
#for aluminum
x = [0.5, 1.5];
y = [0.004, 0.012]

#end of user input

feed_per_tooth = np.interp(tool_diameter, x, y)

# def aluminum():
# 	surface_speed = 250; #ft/min
	
# 	x = [0.5, 1.5];
# 	y = [0.004, 0.012]
# 	feed_per_tooth = np.interp(tool_diameter, x, y)
	
# 	return [surface_speed, feed_per_tooth]

spindle_speed_HSS = (12*surface_speed) / (math.pi*tool_diameter);
spindle_speed_Carbide = (12*(surface_speed*2.5)) / (math.pi*tool_diameter);

print("HSS Spindle Speed: " + str(spindle_speed_HSS) + " (rpm)"); 
print("Carbide Spindle Speed: " + str(spindle_speed_Carbide) + " (rpm)" + '\n');
  
feed_HSS = spindle_speed_HSS*feed_per_tooth*tooth;
feed_Carbide = spindle_speed_Carbide*feed_per_tooth*tooth;

print("HSS Feed: " + str(feed_HSS) + " (in/min)"); 
print("Carbide Feed: " + str(feed_Carbide) + " (in/min)" + '\n');


