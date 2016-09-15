%Clara Amat Fernandez
%September 15th, 2016
%Solutions assignment 2: Chapters 1, 2, & 3.
clear
%%Chapter 1 Exercices

%1.)
atomicweightcopper= (63.55)

%2.)
myage=22
myage-2
myage= myage+1

%3.)
namelengthmax
%namelengthmax solution is 63

%4.)
weightinpounds=150
weightinounces=2400
clear weightinounces
who
whos

%5.)
intmin('uint32')
intmax('uint32')
intmin('uint64')
intmax('uint64')

%6.)
num1=6.4
num2=int32(num1)

%11.)
pounds=150
kilos=pounds/2.2

%12.)
ftemp=72
ctemp=(ftemp-32)*5/9

%13.)
dmiles=2
dkm=dmiles*1.609

%14.)
sind(90)
sin=sind(90)

%15.)
R1=3
R2=5
R3=7
RT=(1/((1/R1)+(1/R2)+(1/R3)))

%22.)
disp('Upper case letters comes before lower case letters. Example:')
numequiva=double('a')
numequivA=double('A')

%24.)
disp('The answer of the first three expressions is one. The answer of the last expression is 0')
'b'>='c'-1
3==2+1
(3==2)+1
xor(5<6,8>4)

%25.)
x=4
y=2
xor(x>5,y<11)

%26.)
A=3e5
B=3*10^5
A==B

%27.)
C=log10(10000)
D=4
C==D


%%Chapter 2 Exercices

%1.)
vec1=(2:7)
vec2=(1.1:0.2:1.7)
vec3=(8:-2:2)

%2.)
linspace(0,2*pi,50)

%3.)
linspace(2,3,6)

%4.)
linspace(-5,-1,5)
linspace(5,9,3)
linspace(8,4,3)

%6.)
vec4=(-1:0.5:1)'

%7.)
vec5=(2:1:10)
even = vec5(1:2:length(vec5))

%8.)
mat=[7:1:10;12:-2:6]
mat(1,3)
mat(2,:)
mat(1:2,1:2)

%9.)
mat=ones(2,4)

%10.)
mat(1,:)=1:4
mat(:,3)=5:6

%12.)
rows=randi([1,5],1,1)
cols=randi([1,5],1,1)
zeros(rows,cols)

%23.)
add= [3 5 7 9 11]
sum(add)

%26.)
num= [3 5 7 9]
deno=[1:4]
sum(num./deno)

%30.)
vec6=randi([-10,10],1,5)
vec6-3
vec6>0
abs(vec6)
max(vec6)

%31.)
mat4=rand(3,5)
max(mat4)
max(mat4')
max(mat4(:))


%%Chapter 3 Exercices

%1.)
%This script calculates the volume of a hollow sphere. oradius is the
%outter radius and iradius is the inner radius. volume is the resulting
%vollume of the sphere
iradius=4   %designated inner radius
oradius=6   %designated outer radius
volume=(4*pi/3)*((oradius^3)-(iradius^3))

%4.)
ex4=input('Enter a matrix:')
%We ask the user to enter a matrix. For example rand(2)

%6.)
fprintf('12345.6789')
%Real number shows up on Command Window.
fprintf('%10.4f\n',12345.6789)
%The number has not changed because the given number only has 4 decimal
%places
fprintf('%10.2f\n',12345.6789)
%The number gets rounded up because it only has space for 2 decimal places.
fprintf('%6.4f\n',12345.6789)
%The number is not reduced because it doesn't reach the lenght specified on
%the function.
fprintf('%2.4f\n',12345.6789)
%Even though the number has a longer field width than 2 it can't get
%reduced because it can't make that number shorter.

%8.)
%This script converts volume from the metric system to the foot system
%It prompts the user for the flowrate in meters per sec and calculates the volume in
%feet per second
flowrate=input('Enter the flow in m^3/s: ') %It asks the user to enter the flow 
conversion=(flowrate/0.028)                 %Conversion from meters to feet
fprintf('A flow rate of %5.2f meters per sec,\n',flowrate)  %The user will be prompt with the answer in feet
fprintf('is equivalent to %5.4f feet per sec,\n', conversion)

%13.)
xvalue=input('Enter the x value: ') %Enter the x value of the vector
yvalue=input('Enter the y value: ') %Enter the y value of the vector
zvalue=input('Enter the z value: ') %Enter the z value of the vector
uvector=[xvalue yvalue zvalue]      %Converts the single values in a vector form
vectorresult=uvector/(sqrt(xvalue^2)+(yvalue^2)+(zvalue^2)) %Makes the calculation and gives the answer as a vector ?