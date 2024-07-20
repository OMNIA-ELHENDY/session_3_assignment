clc
clear
time=input("Please enter the time in the 24 format:","s");
first_par=find(time==':',1);
last_par=find(time==':',1,'last');
hour=str2num(time(first_par-2:first_par-1));
if(hour<24 && hour>=12)
    hour=hour-12;
    time(first_par-2 : first_par-1)=num2str(hour);
    time(last_par+3 : last_par+4)='PM';
    time
elseif((hour<12 && hour>=00) || hour==24)
    time(last_par+3 : last_par+4)='AM';
    time
else
    disp('Please enter a valid hour')
end