function [ glandVol, OringVol ] = glandVolume_Check( glandArea, glandWidth, Oring_width, Oring_ID, Oring_OD)
%checks if gland volume is sufficient

%glandArea is the area of the face that is normal to the bottom of the gland

MajorR = ((abs(Oring_ID - Oring_OD)/2)+Oring_ID)/2
OringVol = (pi*((Oring_width/2)^2))*(2*pi*MajorR)
glandVol = glandArea*glandWidth

if OringVol < 0.9*glandVol
    display('The seal passes the gland volume test');
else
    display('Warning: Oring Volume > Gland Volume');
    
    beep
end
end