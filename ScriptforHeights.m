%David Odim
%ENGI 1100H
%October 30
%Finding the max height given initial velocity and height
clc, clear, close all %clc clears the command window
%clear = clearing the variables in workspace close all = close all open
%figure windows

%% Step 1: Define the Problem
%given initial velocity and height of a ball determine its max height
%% Step 2: Collect information

%gravity - earth
Planet = input('Enter the name of the planet: ', 's')

g= 32.2; %[ft/s^2]

%initial height
%Get a user input 

User_Height = input("Enter an initial height in ft: ");

%initial velocity

User_Velocity = input("Enter an intitial velocity in ft/s: ");

%% Step 3: Generate a solution
%Projectile motion formula: 
%h(t) = ho + vo*t = .5*g*t.^2

%% Step 4: Refine and Implement
Time = 0:.1:20;
Height = User_0Height + User_Velocity*Time - .5*g*Time.^2;

DATA = [Time',Height'];

[MAX_HEIGHT,LOC] = max(Height);

MAX_TIME = Time(LOC);
disp(' ')
disp('Displaying the final answer: ')

fprintf('The maximum height was %0.2f\n', MAX_Height);
fprintf('The corresonding time was %0.2f seconods.\n',MAX_TIME);
fprintf('The planet was %s\n',Planet)

%% Step 5: Verify and Test
%create a plot
plot(Time,Height,'r--')
%plot single point for the max height
hold on
scatter(MAX_TIME,MAX_HEIGHT,'filled','r')
xlabel('Time(t) [s]')
ylabel('Heighgt (h) [ft]')
axis([0 max(Time) 0 max(Height)+ 10]) %axis [xmin xmax 
hold off