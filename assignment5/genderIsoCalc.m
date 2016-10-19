function [femaleIsoIndMeans,maleIsoIndMeans,femaleGroupIsoMean,maleGroupIsoMean] = genderIsoCalc( Gender,Day1,Day2,Day3 )
%This custom made function calculates the Female and Male Isokinetic Individual Means for each
%individual. It also calculates the mean for each of the groups.

%Creates a new variable for the Gender variable so the code can detect if the
%individual is male or female
GENDER=cell2mat(Gender);
%Creates a vector of zeros that will be overwritten by the data that
%corresponds to men or women. This way the user can know to what subject
%the data belongs when it is later exported.
femaleIsoIndMeans=zeros(1,25);
maleIsoIndMeans=zeros(1,25);

%For loop with a nested conditional to sort the rows into male or female
%and calculate the mean for each indidual.
for i=1:25
    if GENDER(i,1)=='F'
        femaleIsoIndMeans(i)=(Day1(i,1)+Day2(i,1)+Day3(i,1))/3;
    else 
        maleIsoIndMeans(i)=(Day1(i,1)+Day2(i,1)+Day3(i,1))/3;
    end  
end

%Calculates the mean of the resultant vectors without the zeros.
femaleGroupIsoMean=mean(setdiff(femaleIsoIndMeans,0))
maleGroupIsoMean=mean(setdiff(maleIsoIndMeans,0))
end

 
