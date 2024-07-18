
clear
clc
time = input("please,enter the time:", "s");

% Find the colon separating hours and minutes
index_first_colon = find(time == ':', 1) - 1;

% Extract the hour and convert to a number
hour = str2double(time(1:index_first_colon)) - str2double('0');
flag_pm=0;
flag_am=0;
% Determine AM/PM flag
if (hour >12 || hour==12)
    flag_pm = 1;
   
else
    flag_am = 1;
    
end

% Convert time based on AM/PM flag
if (flag_pm)
    if (time(1:index_first_colon) == '12')
        conversion_time = [time(1:length(time)) 'pm']  % Include "pm"
    else
        hours = str2double(time(1:index_first_colon)) - str2double('0') - 12;
        conversion_time = [num2str(hours) time(index_first_colon + 1:length(time)) 'pm']
    end
elseif (flag_am)  % Use parentheses for clarity
    if (time(1:index_first_colon) == '00')
        conversion_time = ['12' time(index_first_colon + 1:length(time)) 'am']
    else
        conversion_time = [time(1:length(time)) 'am']
    end
end

