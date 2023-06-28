% The Road to Recovery 

% Line 1 
t = 0:0.01:2*pi; % sets time vector 

% Line 2 
x = sin(t); % creates x-axis component of sine wave 

% Line 3 
y = cos(t); % creates y-axis component of sine wave 

% Line 4 
plot(x,y); % plots sine wave as a circle 

% Line 5 
title('The Road to Recovery'); % adds title 

% Line 6 
xlabel('Time'); % adds x-axis label 

% Line 7 
ylabel('Distance'); % adds y-axis label 

% Line 8 
axis([-2 2 -2 2]); % sets x-axis and y-axis limits 

% Line 9 
grid on; % turns on gridlines 

% Line 10 
hold on; % stops axis from reseting after each plot 

% Line 11 
for i = 1:18 % loops 18 times to create waves 
    
    % Line 12 
    t = i*0.1:0.01:(i*0.1+2*pi); % redefines time vector 
    
    % Line 13 
    x = sin(t); % redefines x-axis component of sine wave 
    
    % Line 14 
    y = cos(t); % redefines y-axis component of sine wave 
    
    % Line 15 
    if i == 1 % if statement to set colour of first wave 
        plot(x,y,'b'); % plots first wave in blue 
    elseif mod(i,2) == 0 % if statement to set colour of even waves 
        plot(x,y,'r'); % plots even waves in red 
    else % else statement to set colour of odd waves 
        plot(x,y,'g'); % plots odd waves in green 
    end % ends if statement 
    
end % ends for loop 

% Line 16 
legend('The Road to Recovery'); % adds legend 

% Line 17 
set(gca,'FontSize',14); % sets font size of axes 

% Line 18 
set(gcf,'Position',[100 100 800 600]); % sets figure position and size 

% Line 19 
x = x + 1.5; % shifts x-axis component of waves 

% Line 20 
y = y + 1.5; % shifts y-axis component of waves 

% Line 21 
plot(x,y,'k'); % plots all waves in black 

% Line 22 
text(1.58,1.68,'Start','FontSize',20); % adds start label 

% Line 23 
text(1.58,-1.68,'Finish','FontSize',20); % adds finish label 

% Line 24 
for i = 1:18 % loops 18 times to create arrows 
    
    % Line 25 
    x1 = sin(i*0.1); % creates x-axis start point of arrows 
    
    % Line 26 
    y1 = cos(i*0.1); % creates y-axis start point of arrows 
    
    % Line 27 
    x2 = sin(i*0.1+2*pi); % creates x-axis end point of arrows 
    
    % Line 28 
    y2 = cos(i*0.1+2*pi); % creates y-axis end point of arrows 
    
    % Line 29 
    a1 = 0.04*(x2-x1); % creates x-axis component of arrow head 
    
    % Line 30 
    a2 = 0.04*(y2-y1); % creates y-axis component of arrow head 
    
    % Line 31 
    x = [x2 x2+a1 x2-a2]; % creates x-axis points of arrow head 
    
    % Line 32 
    y = [y2 y2+a2 y2+a1]; % creates y-axis points of arrow head 
    
    % Line 33 
    plot([x1 x2],[y1 y2],'k'); % plots arrows 
    
    % Line 34 
    fill(x,y,'k'); % fills arrows with black 
    
end % ends for loop