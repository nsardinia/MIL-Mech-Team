
import math
import numpy as np

print("Drilling Feed and Speed Calculator" + '\n');
print("Source: EML2322L MAE Design and Manufacturing Laboratory Drilling Speeds and Feed");
print("Note: base units are inches, rpm, seconds. Unless otherwise noted" + '\n');

#SFM Recommedantion for HSS Tool in ft/min
#Multiply by 2.5 for Carbide Tool
#Aluminum = 250 
#Stainless Steel Free Machining = 40
#Stainless Steel Work Hardened  = 20
#Bronze = 100 

#User input
surface_speed = 250; #ft/min
tool_diameter = 0.25; #in

spindle_speed_HSS = (12*surface_speed) / (math.pi*tool_diameter);
spindle_speed_Carbide = (12*(surface_speed*2.5)) / (math.pi*tool_diameter);

print("HSS Spindle Speed: " + str(spindle_speed_HSS) + " (rpm)"); 
print("Carbide Spindle Speed: " + str(spindle_speed_Carbide) + " (rpm)" + '\n');


if tool_diameter < (0.125):
	feed_per_rev = 0.002*(tool_diameter/0.125);

elif tool_diameter >= (0.125) and tool_diameter < (0.5):
	feed_per_rev = 0.002*(tool_diameter/0.125);	

elif tool_diameter >= (0.5) and tool_diameter < (1):
	x = [0.5, 1];
	y = [0.008, 0.012]; 
	feed_per_rev = np.interp(tool_diameter, x, y)

elif tool_diameter >= (1) and tool_diameter < (1.5):
	x = [1, 1.5];
	y = [0.012, 0.016]; 
	feed_per_rev = np.interp(tool_diameter, x, y)

else:
	feed_per_rev = 0.020;

print("Feed Per Rev: " + str(feed_per_rev) + " (in/rev)" + '\n');

feed_HSS = spindle_speed_HSS*feed_per_rev;
feed_Carbide = spindle_speed_Carbide*feed_per_rev;

print("HSS Feed: " + str(feed_HSS) + " (in/min)"); 
print("Carbide Feed: " + str(feed_Carbide) + " (in/min)" + '\n');
