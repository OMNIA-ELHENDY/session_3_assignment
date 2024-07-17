%%%%Time Conversion Code

clc
clear
time = input("Please enter the time ", 's');

flag_pm = 0;
flag_am = 0;
index_am=0;
index_pm=0;
index_1st_colon = find(time == ':', 1) - 1;
hours =0;

%%%%%%%%To determine AM or PM

for i = 1 : length(time)
    if(time(i) == 'A' || time(i) == 'a') %AM
        flag_am = 1;
        index_am = i - 1;
    elseif(time(i) == 'P' || time(i) == 'p') %PM
        flag_pm = 1;
        index_pm = i - 1;
    end
end
%%Here is the code in text format:

if(flag_am) % to convert am
    if(time(1:index_1st_colon) == "12") % if clock == 12
        time_conversion = ['00' time(index_1st_colon +1 :length(time))];
    else
        time_conversion = time(1:index_am)
    end
elseif(flag_pm) % to convert pm
    if(time(1:index_1st_colon) == "12") % if clock == 12
        time_conversion = time(1:index_pm)
    else
        hours = str2double(time(1:index_1st_colon)) - str2double('0') -12 ;
        time_conversion = [num2str(hours) time(index_1st_colon +1 :length(time))];
    end
end

time_conversion


