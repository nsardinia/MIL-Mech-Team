%WARNING ALL OF THESE MEASUREMENTS MUST BE IN INCHES

beep on
display('WARNING ALL OF THESE MEASUREMENTS MUST BE IN INCHES'); 


OringID = 5 + 1/2;
OringOD = 6 + 11/16;
Oring_width = 3/32;

%This is dependent on the design 
glandArea = 1.30361; %gland area uses the Gland Depth NOT Groove Depth
glandWidth =  0.125; 
glandPerimeter = 17.7527559; %Perimeter at the bottom of the gland
maxStretch = 18.06724409; %This is in circumference that the Oring have to stretch over during installation

OringStretch_Check(OringID, glandPerimeter, maxStretch);
glandVolume_Check(glandArea, glandWidth, Oring_width, OringID, OringOD);