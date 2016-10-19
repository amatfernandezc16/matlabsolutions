function [ DayAtoDayB ] = dayComparator( SubjectID,DayA,DayB )
%This custom made function identifies the individuals that had a higher isokinetic
%value on the 2nd or 3rd day compared to the previous day.

%For loop that compares the values of two different data points and
%compares them. It displays the values that have increased in that amount
%of time.
for i=1:25
    if DayB(i,1)>DayA(i,1)
       DayAtoDayB(i)=SubjectID(i,1);
    end
end
%Displays only the subjects that have increased.
DayAtoDayB=(setdiff(DayAtoDayB,0));


end

