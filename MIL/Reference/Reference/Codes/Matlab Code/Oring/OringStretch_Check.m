function [ ID_Matrix ] = OringStretch_Check( Oring_ID, glandPerimeter, largest_Stretch)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

   
    ID_Matrix = size(5, 2);
    
    display('STATIC O-RING STRETCH CANNOT EXCEED 5%')
    display('Column 1 represent percent stretch. Column 2 is the numerical value')
    
    display(glandPerimeter/pi);
    %Calculating percent strecthes;
    for i = 1:1:5
       ID_Matrix(i,1) = i;
       ID_Matrix(i,2) = (Oring_ID + Oring_ID*(0.01*i));   
    end
    
    display(ID_Matrix);
    display(glandPerimeter/pi);
    
    %Checking static stretch on Oring
    if ID_Matrix(5,2) > glandPerimeter/pi
        %Check if static stretch is under 5% stretch
        display('Seal is passes static stretch test');
    elseif Oring_ID >  glandPerimeter/pi
        display('Warning: Oring is too loose. (Oring ID > Gland perimeter)');
        beep
    else 
        display('Warning: Oring is overly stretched in static');
        beep
    end
    
    %Checking stretching during installation/assembly
    largest_Stretch = largest_Stretch/pi;
    %This buffer serves as a safety factor
    MaxStretch_Buffered = largest_Stretch + largest_Stretch*0.1
    MaxStretch = (Oring_ID + Oring_ID*0.46)
    %Oring ID expansion should not expand pass 50% during assembly
    if MaxStretch_Buffered < (Oring_ID + Oring_ID*0.46) %0.46 is built in safety 
        display('The seal passes installation stretch test');

    else 
        display('Warning: Oring is overly stretched during installation');
        beep
    end
end

