clear
clc
time = input("Please, enter the time","s");

index_first_colon = find(time==':',1) -1;
flag_evening=0;
flag_morning=0;
flag_midnight=0;
flag_noon=0;
hours_converted=0;

% determine whether it is morning or evening 

for j=13:23 %%evening
    
    hours=str2double(time(1:index_first_colon));
    if(hours==j)
        hours_converted=hours-12;
        flag_evening=1;
     
    end
end
  for m=1:11 %%morning

      hours=str2double(time(1:index_first_colon));
    if(hours==m)
        flag_morning=1;
    elseif (hours==12)
        flag_noon=1;
    else
        flag_midnight=1;
    end
  end


% to add pm to evening , and am to morning

if(flag_midnight)
    time_after_conv= ['12' time(index_first_colon+1:length(time)) ' AM']
end

if(flag_morning)
    time_after_conv= [num2str(hours) time(index_first_colon+1:length(time)) ' AM']
end

if(flag_evening)
    time_after_conv= [num2str(hours_converted) time(index_first_colon+1:length(time)) ' PM']
end

if(flag_noon)
    time_after_conv= ['12' time(index_first_colon+1:length(time)) ' PM']
end