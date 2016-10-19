function [ normDay1mean,normDay2mean,normDay3mean ] = normIsodata( Weight,Day1,Day2,Day3 )
%This custom made function normalizes the data of each day and individual by weight and
%creates the mean of all the individuals for each day.

%This for loop normalizes the data of each individual for each day.
for i=1:25
    normDay1(i,1)=(Day1(i,1)/Weight(i,1));
    normDay2(i,1)=(Day2(i,1)/Weight(i,1));
    normDay3(i,1)=(Day3(i,1)/Weight(i,1));
end

%Calculates the mean of all the individuals for each day.
normDay1mean=mean(normDay1)
normDay2mean=mean(normDay2)
normDay3mean=mean(normDay3)
end

