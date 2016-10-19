%Assignment 5: Analyzing Isometric Strength Data
%Name: Clara Amat Fernandez
%Date: 10/4/2016
%This code will analyze Isometric  Strength Data and will 
%create an Excel sheet.
clear all
close all

%The following lines are the several custom functions needed to obtain the data.
%It imports the data from the csv file on path.
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3]=importfile('isok_data_6803.csv');
%Calculates the individual means for males and females, and the two group
%means
[femaleIsoIndMeans,maleIsoIndMeans,femaleGroupIsoMean,maleGroupIsoMean] = genderIsoCalc( Gender,Day1,Day2,Day3 );
%Extracts the subjects that increased their values from Day 1 to Day 2.
day1toDay2 = dayComparator( SubjectID, Day1,Day2 );
%Extracts the subjects that increased their values from Day 2 to Day 3.
day2toDay3 = dayComparator( SubjectID,Day2,Day3 );
%Calculates the normalized data for the weight for each of the 3 days.
[ normDay1mean,normDay2mean,normDay3mean ] = normIsodata( Weight,Day1,Day2,Day3 );


%Tranposes the following variables from row to colums
femaleIsoIndMeans=femaleIsoIndMeans';
maleIsoIndMeans=maleIsoIndMeans';
day1toDay2=day1toDay2';
day2toDay3=day2toDay3';

%Stores the following variables into different tables
table1=table(SubjectID,femaleIsoIndMeans,maleIsoIndMeans);
table2=table(day1toDay2);
table3=table(day2toDay3);
table4=table(femaleGroupIsoMean,maleGroupIsoMean,normDay1mean,normDay2mean,normDay3mean);

%Creates the spreadsheet with several sheets in it where the tables are
%stored
writetable(table1,'iso_results.xlsx','Sheet',1);
writetable(table2,'iso_results.xlsx','Sheet',2);
writetable(table3,'iso_results.xlsx','Sheet',3);
writetable(table4,'iso_results.xlsx','Sheet',4);