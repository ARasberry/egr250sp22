% clears workspace
clear
clc

% Program runs to compute how many trucks is needed to complete a
% half-spherical concrete dome. It inputs the height in feet and the
% thickness of the wall in inches, does the calculation of the volume of
% the original dome, the inside hollow dome, subtracts the two to get the
% volume of the wall in feet. It then coverts to yards, and is divided by
% ten to see and rounded to the top whole number to see how many trucks are
% needed.

% input to get the radius
radius = input("Please input height of dome in feet");

% input to get the thickness
thickness = input("Please input thickness of the concrete in the wall in inches");

% Calculates the volume of the whole dome
fullDome = (4/3 * radius^3 * pi) * 1/2;

% Calculates the volume of the inside hollow part of the dome
insideDome = (4/3 * (radius - (thickness/12))^3 * pi) * 1/2;

% Calculates the volume of the wall in feet
wallVolFeet = fullDome - insideDome;

% Converts the volume of wall to yards
wallVolYard = wallVolFeet/27;

% Calculates how many trucks is neccesarry 
fullTrucks = ceil(wallVolYard/10);

% Displays how many trucks are needed, if statement so if there is only one
% truck it does not display "trucks"
if fullTrucks > 1
    disp("You need " + fullTrucks + " trucks of concrete")
else 
    disp("You need " + fullTrucks + " truck of concrete")
end 