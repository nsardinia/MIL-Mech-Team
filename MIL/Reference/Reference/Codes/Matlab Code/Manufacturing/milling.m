function [ max_spindle, feed_rate ] = milling( surface_speed, tool_diameter, feed_per_tooth, teeth )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%surface_speed needs to be in ft/min and is dependent on material of tools
%and part

%tool diameter is in inches

    max_spindle = (12*surface_speed) / (pi*tool_diameter)
    
    feed_rate = max_spindle*feed_per_tooth*teeth
end

