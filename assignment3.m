%Clara Amat Fernandez
%9/12/2016
%This code allows the user to play Tic Tac Toe
clear all
clc
disp('Welcome to the greatest Tic Tac Toe game!')
disp('A board of numbers from 1 through 9 will be displayed in the Command Window')
tictac=['1','2','3';'4','5','6';'7','8','9'];   %Matrix that represents the gameboard 
num2str(tictac);        %Switching the matrix numbers to characters
disp(tictac)
disp('For this game CPU=X and User=O')
%%%%%%%%%%%%%%%%%%%%%%%CPU 1st turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('The computer will go first')
tictac(2,2)='X'; 
disp(tictac)                %CPU's firts turn. Chooses the middle spot for first turn

%%%%%%%%%%%%%%%%%%%%%%%USER 1st turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This creates a vector with the numbers that have already 
%been used in the matrix. It will update for every play.
usednum=[5];
 %The following piece of code is in case the user tries to play in
        %the middle square, which is already taken. The user can play again
        %(line 25) and if it still wants to play on 5, the program will
        %randomly choose a place for them and enter an O (lines 31-37)
user1=input('It is your turn now! Choose your move and ENTER the number that is on that spot on the gameboard:\n>');
if user1==5
    user1=input('Try again or you you will not get to choose!\n>')
    elseif user1>9
    user1=input('Try again or you you will not get to choose!\n>')
end
if user1==5
    disp('You are a cheater. I will play for you')
     user1=randsample(setdiff(1:9,usednum),1);
 elseif user1>9
     disp('You are a cheater. I will play for you')
    user1=randsample(setdiff(1:9,usednum),1);
end
switch user1
    case 1                      %The user enter a number that corresponds to a place in the grid
        tictac(1,1)='O';        %and the program changes the number for an O in this case or an X 
        disp(tictac)            %when it's the computer's turn.
    case 2
        tictac(1,2)='O';
        disp(tictac)
    case 3
        tictac(1,3)='O';
        disp(tictac)
    case 4
        tictac(2,1)='O';
        disp(tictac)
    case 6
        tictac(2,3)='O';
        disp(tictac)
    case 7
        tictac(3,1)='O';
        disp(tictac)
    case 8
        tictac(3,2)='O';
        disp(tictac)
    case 9
        tictac(3,3)='O';
        disp(tictac)
end
%%%%%%%%%%%%%%%%%%%%%CPU 2nd turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('The computer plays again!')
usednum=[5,user1]; 
%The following function makes the play for the CPU. The function chooses
%randomly of the pool of numbers that have not been chosen already. Since I
%defined the used numbers in the variable above, this function will work no
%matter the play the user makes or the CPU makes.
CPU2=randsample(setdiff(1:9,usednum),1);
switch CPU2
     case 1
        tictac(1,1)='X';
        disp(tictac)
     case 2
         tictac(1,2)='X';
         disp(tictac)
     case 3
         tictac(1,3)='X';
         disp(tictac)
     case 4
         tictac(2,1)='X';
         disp(tictac)
     case 6
         tictac(2,3)='X';
         disp(tictac)
     case 7
         tictac(3,1)='X';
         disp(tictac)
     case 8
         tictac(3,2)='X';
         disp(tictac)
     case 9
         tictac(3,3)='X';
         disp(tictac)
end
%%%%%%%%%%%%%%%%%%%%%%%%USER 2nd turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%The usednum variable is uppdated to the lastest move
usednum=[5,user1,CPU2];
%The following line prompts the user to make the next move
user2=input('It is your turn again! Choose wisely:\n>');
%The folowing few lines (lines 107-115) take the user through a series of
%if statemtns if he/she decides to play in a square that has already been
%taken and if they fail to play in an unused square the computer will
%randomly choose a number for the user (lines 116-128)
if user2==5
    user2=input('Try again or you you will not get to choose!\n>')
elseif user2==user1
    user2=input('Try again or you you will not get to choose!\n>')
elseif user2==CPU2
    user2=input('Try again or you you will not get to choose!\n>')
elseif user2>9
    user2=input('Try again or you you will not get to choose!\n>')
end
if user2==5
    disp('You are a cheater. I will play for you')
     user2=randsample(setdiff(1:9,usednum),1);
 elseif user2==user1
     disp('You are a cheater. I will play for you')
    user2=randsample(setdiff(1:9,usednum),1);
 elseif user2==CPU2
     disp('You are a cheater. I will play for you')
    user2=randsample(setdiff(1:9,usednum),1);
 elseif user2>9
     disp('You are a cheater. I will play for you')
    user2=randsample(setdiff(1:9,usednum),1);
end
switch user2
     case 1
        tictac(1,1)='O';
        disp(tictac)
    case 2
        tictac(1,2)='O';
        disp(tictac)
    case 3
        tictac(1,3)='O';
        disp(tictac)
    case 4
        tictac(2,1)='O';
        disp(tictac)
    case 6
        tictac(2,3)='O';
        disp(tictac)
    case 7
        tictac(3,1)='O';
        disp(tictac)
    case 8
        tictac(3,2)='O';
        disp(tictac)
    case 9
        tictac(3,3)='O';
        disp(tictac)
end
%%%%%%%%%%%%%%%%%%CPU 3rd turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This is the first turn that there could be a winner
disp('The computer plays again!')
%The variable gameover is used at the end of every turn starting in this
%one to make the program "jump" to the end of the game and finish the
%program. The variable has to be defined before this turn so in case the
%game ends here and the value of the variable is changed, it has a previous
%value to compare it to.
gameover=17;
%Update valiable usednum
usednum=[5,user1,CPU2,user2];
%CPU plays a random number from the pool of the unused numbers
CPU3=randsample(setdiff(1:9,usednum),1);
switch CPU3
     case 1
        tictac(1,1)='X';
        disp(tictac)
     case 2
         tictac(1,2)='X';
         disp(tictac)
     case 3
         tictac(1,3)='X';
         disp(tictac)
     case 4
         tictac(2,1)='X';
         disp(tictac)
     case 6
         tictac(2,3)='X';
         disp(tictac)
     case 7
         tictac(3,1)='X';
         disp(tictac)
     case 8
         tictac(3,2)='X';
         disp(tictac)
     case 9
         tictac(3,3)='X';
         disp(tictac)
end
%%%%%%%%Winning statements for CPU
%Make the code evaluate all the different possibliites to win for the CPU
%and if the 3 conditions are met, change the variable value to 18 (lines
%198-222)
if (tictac(1,1)=='X')&&(tictac(1,2)=='X')&&(tictac(1,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(2,1)=='X')&&(tictac(2,2)=='X')&&(tictac(2,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(3,1)=='X')&&(tictac(3,2)=='X')&&(tictac(3,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,1)=='X')&&(tictac(2,1)=='X')&&(tictac(3,1))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,2)=='X')&&(tictac(2,2)=='X')&&(tictac(3,2))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,3)=='X')&&(tictac(2,3)=='X')&&(tictac(3,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,1)=='X')&&(tictac(2,2)=='X')&&(tictac(3,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,3)=='X')&&(tictac(2,2)=='X')&&(tictac(3,1))=='X';
    disp('You Lose!!!')
    gameover=18;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%USER 3rd turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%The code evaluates the variable gameover in case it has been changed to 18
%(somebody already won), and if the condition is not met, then it starts
%running the rest of the code.
if gameover==18;
    gameover=18;
%If the previous condition is not met, the code prompts the user to choose
%the next play and evaluates if the number they have chosen has been used
%or not.
else   
    usednum=[5,user1,CPU2,user2,CPU3];
    user3=input('It is your turn again! Choose wisely:\n>');
    if user3==5
    user3=input('Try again or you will not get to choose!\n>')
    elseif user3==user1
    user3=input('Try again or you will not get to choose!\n>')
    elseif user3==CPU2
    user3=input('Try again or youwill not get to choose!\n>')
    elseif user3==user2
    user3=input('Try again or you will not get to choose!\n>')
    elseif user3==CPU3
    user3=input('Try again or you will not get to choose!\n>')
    elseif user3>9
    user3=input('Try again or you will not get to choose!\n>')
    end
    %If they tried to cheat, the code chooses a random number from the pool
    %of numbers left.
    if user3==5
    disp('You are a cheater. I will play for you')
     user3=randsample(setdiff(1:9,usednum),1);
 elseif user3==user1
     disp('You are a cheater. I will play for you')
    user3=randsample(setdiff(1:9,usednum),1);
 elseif user3==CPU2
     disp('You are a cheater. I will play for you')
    user3=randsample(setdiff(1:9,usednum),1); 
 elseif user3==user2
     disp('You are a cheater. I will play for you')
    user3=randsample(setdiff(1:9,usednum),1);
 elseif user3==CPU3
     disp('You are a cheater. I will play for you')
    user3=randsample(setdiff(1:9,usednum),1); 
 elseif user3>9
     disp('You are a cheater. I will play for you')
    user3=randsample(setdiff(1:9,usednum),1); 
    end
    switch user3
     case 1
        tictac(1,1)='O';
        disp(tictac)
    case 2
        tictac(1,2)='O';
        disp(tictac)
    case 3
        tictac(1,3)='O';
        disp(tictac)
    case 4
        tictac(2,1)='O';
        disp(tictac)
    case 6
        tictac(2,3)='O';
        disp(tictac)
    case 7
        tictac(3,1)='O';
        disp(tictac)
    case 8
        tictac(3,2)='O';
        disp(tictac)
    case 9
        tictac(3,3)='O';
        disp(tictac)
end
end
    %%%Winning statements for USER
    %The following lines are evaluated to see if the user has won or not.
    %If the 3 conditions are met, then it will display "You Win!!" and
    %change the gameover variable to 18.
if(tictac(1,1)=='O')&&(tictac(1,2)=='O')&&(tictac(1,3))=='O';
    disp('You Win!!!')
    gameover=18;
elseif (tictac(3,1)=='O')&&(tictac(3,2)=='O')&&(tictac(3,3))=='O';
    disp('You Win!!!')
    gameover=18;
elseif (tictac(1,1)=='O')&&(tictac(2,1)=='O')&&(tictac(3,1))=='O';
    disp('You Win!!!')
    gameover=18;
elseif (tictac(1,3)=='O')&&(tictac(2,3)=='O')&&(tictac(3,3))=='O';
    disp('You Win!!!')
    gameover=18;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%CPU 4th turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if gameover==18;
    gameover=18;
else  
disp('The computer plays again!')
usednum=[5,user1,CPU2,user2,CPU3,user3];
CPU4=randsample(setdiff(1:9,usednum),1);
switch CPU4
     case 1
        tictac(1,1)='X';
        disp(tictac)
     case 2
         tictac(1,2)='X';
         disp(tictac)
     case 3
         tictac(1,3)='X';
         disp(tictac)
     case 4
         tictac(2,1)='X';
         disp(tictac)
     case 6
         tictac(2,3)='X';
         disp(tictac)
     case 7
         tictac(3,1)='X';
         disp(tictac)
     case 8
         tictac(3,2)='X';
         disp(tictac)
     case 9
         tictac(3,3)='X';
         disp(tictac)
end
end
%%%%%%%%%%%%%Winning statements for the CPU
if (tictac(1,1)=='X')&&(tictac(1,2)=='X')&&(tictac(1,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(2,1)=='X')&&(tictac(2,2)=='X')&&(tictac(2,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(3,1)=='X')&&(tictac(3,2)=='X')&&(tictac(3,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,1)=='X')&&(tictac(2,1)=='X')&&(tictac(3,1))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,2)=='X')&&(tictac(2,2)=='X')&&(tictac(3,2))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,3)=='X')&&(tictac(2,3)=='X')&&(tictac(3,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,1)=='X')&&(tictac(2,2)=='X')&&(tictac(3,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,3)=='X')&&(tictac(2,2)=='X')&&(tictac(3,1))=='X';
    disp('You Lose!!!')
    gameover=18;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%USER 4th turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if gameover==18;
    gameover=18;
else   
usednum=[5,user1,CPU2,user2,CPU3,user3,CPU4];
user4=input('It is your last turn! Finish strong:\n>');
if user4==5
    user4=input('Try again or you will not get to choose!\n>')
elseif user4==user1
    user4=input('Try again or you will not get to choose!\n>')
elseif user4==CPU2
    user4=input('Try again or you will not get to choose!\n>')
elseif user4==user2
    user4=input('Try again or you will not get to choose!\n>')
elseif user4==CPU3
    user4=input('Try again or you will not get to choose!\n>')
elseif user4==user3
    user4=input('Try again or you will not get to choose!\n>')
elseif user4==CPU4
    user4=input('Try again or you will not get to choose!\n>')
elseif user4>9
    user4=input('Try again or you will not get to choose!\n>')
end
 if user4==5
    disp('You are a cheater. I will play for you')
     user4=randsample(setdiff(1:9,usednum),1);
 elseif user4==user1
     disp('You are a cheater. I will play for you')
    user4=randsample(setdiff(1:9,usednum),1);
 elseif user4==CPU2
     disp('You are a cheater. I will play for you')
    user4=randsample(setdiff(1:9,usednum),1); 
 elseif user4==user2
     disp('You are a cheater. I will play for you')
    user4=randsample(setdiff(1:9,usednum),1); 
 elseif user4==CPU3
     disp('You are a cheater. I will play for you')
    user4=randsample(setdiff(1:9,usednum),1); 
 elseif user4==user3
     disp('You are a cheater. I will play for you')
    user4=randsample(setdiff(1:9,usednum),1); 
 elseif user4==CPU4
     disp('You are a cheater. I will play for you')
    user4=randsample(setdiff(1:9,usednum),1); 
 elseif user4>9
     disp('You are a cheater. I will play for you')
    user4=randsample(setdiff(1:9,usednum),1);
    end
switch user4
     case 1
        tictac(1,1)='O';
        disp(tictac)
    case 2
        tictac(1,2)='O';
        disp(tictac)
    case 3
        tictac(1,3)='O';
        disp(tictac)
    case 4
        tictac(2,1)='O';
        disp(tictac)
    case 6
        tictac(2,3)='O';
        disp(tictac)
    case 7
        tictac(3,1)='O';
        disp(tictac)
    case 8
        tictac(3,2)='O';
        disp(tictac)
    case 9
        tictac(3,3)='O';
        disp(tictac)
end
end
    %%%Winning statements for USER
if(tictac(1,1)=='O')&&(tictac(1,2)=='O')&&(tictac(1,3))=='O';
    disp('You Win!!!')
    gameover=18;
elseif (tictac(3,1)=='O')&&(tictac(3,2)=='O')&&(tictac(3,3))=='O';
    disp('You Win!!!')
    gameover=18;
elseif (tictac(1,1)=='O')&&(tictac(2,1)=='O')&&(tictac(3,1))=='O';
    disp('You Win!!!')
    gameover=18;
elseif (tictac(1,3)=='O')&&(tictac(2,3)=='O')&&(tictac(3,3))=='O';
    disp('You Win!!!')
    gameover=18;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%CPU 5th turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if gameover==18;
    gameover=18;
else  
disp('The computer plays again!')
usednum=[5,user1,CPU2,user2,CPU3,user3,CPU4,user4];
CPU5=setdiff(1:9,usednum);
switch CPU5
     case 1
        tictac(1,1)='X';
        disp(tictac)
     case 2
         tictac(1,2)='X';
         disp(tictac)
     case 3
         tictac(1,3)='X';
         disp(tictac)
     case 4
         tictac(2,1)='X';
         disp(tictac)
     case 6
         tictac(2,3)='X';
         disp(tictac)
     case 7
         tictac(3,1)='X';
         disp(tictac)
     case 8
         tictac(3,2)='X';
         disp(tictac)
     case 9
         tictac(3,3)='X';
         disp(tictac)
end
end
%%%%%%%%Winning statements for CPU
if (tictac(1,1)=='X')&&(tictac(1,2)=='X')&&(tictac(1,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(2,1)=='X')&&(tictac(2,2)=='X')&&(tictac(2,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(3,1)=='X')&&(tictac(3,2)=='X')&&(tictac(3,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,1)=='X')&&(tictac(2,1)=='X')&&(tictac(3,1))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,2)=='X')&&(tictac(2,2)=='X')&&(tictac(3,2))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,3)=='X')&&(tictac(2,3)=='X')&&(tictac(3,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,1)=='X')&&(tictac(2,2)=='X')&&(tictac(3,3))=='X';
    disp('You Lose!!!')
    gameover=18;
elseif (tictac(1,3)=='X')&&(tictac(2,2)=='X')&&(tictac(3,1))=='X';
    disp('You Lose!!!')
    gameover=18;
end
if gameover==17
    disp('Nobody Wins!')
end
disp('Bye Bye!')