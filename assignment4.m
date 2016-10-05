%Clara Amat Fernandez
%10/6/2016
%This code allows the user to play Tic Tac Toe

disp('Welcome to the most updated Tic Tac Toe game!')
playagain=input('Do you want to play? If you want to play enter a 1 but if you do not, enter any other number :\n>');
%A while loop starts here. The variable playagain has to be 1 in order for
%the program to run the lines that are inside the loop. If the user inputs
%any other number, it won't enter the while loop and go to the good bye
%message.

while playagain==1
    %A nested while loop starts here. The function of another while loop
    %here is that through out the code there are 'breaks' and, for the
    %program to work, it needs to stay on a loop so it can get started
    %again.
    
    while playagain==1
        disp('A board of numbers from 1 through 9 will be displayed in the Command Window')
        tictac=['1','2','3';'4','5','6';'7','8','9'];   %Matrix that represents the gameboard
        num2str(tictac);        %Switching the matrix numbers to characters
        disp(tictac)
        disp('For this game CPU=X and User=O')
        
        %%%%%%%%%%%%%%%%%%%%%%%CPU 1st turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        disp('The computer will go first')
        tictac(2,2)='X';
        disp(tictac)  %CPU's firts turn. Chooses the middle spot for first turn
        
        %%%%%%%%%%%%%%%%%%%%%%%USER 1st turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %This creates a vector with the numbers that have already
        %been used in the matrix. It will update for every play.
        usednum=5;
        %The following piece of code is in case the user tries to play in
        %the middle square, which is already taken. The user can play again
        %and if it still wants to play on 5, the program will
        %randomly choose a place for them and enter an O 
        user1=input('It is your turn now! Choose your move and ENTER the number that is on that spot on the gameboard:\n>');
        %A for loop starts here. It will run as many times as numbers has
        %the variable usednum. In this move, there is only one number so
        %the loop only goes through once. The loop evaluates if the number
        %that the user inputs has been used or not and display a message.
        for i=1:length(usednum)
            if user1==usednum(i)
                user1=input('Try again or you you will not get to choose!\n>');
            elseif user1>9
                user1=input('Try again or you you will not get to choose!\n>');
                break            %This break stament takes the user outside of the loop so
                                 %it can proceeed with the program.
            end
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
        %The usednum variable is updated to the lastest move
        usednum=[5,user1,CPU2];
        %The following line prompts the user to make the next move
        user2=input('It is your turn again! Choose wisely:\n>');
        %The folowing few lines take the user through a series of
        %if statements if he/she decides to play in a square that has already been
        %taken and if they fail to play in an unused square the computer will
        %randomly choose a number for the user 
        for i=1:length(usednum)
            if user2==usednum(i)
                user2=input('Try again or you you will not get to choose!\n>');
             elseif user2>9
                user2=input('Try again or you you will not get to choose!\n>');
                break
            end
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
            break
        elseif (tictac(2,1)=='X')&&(tictac(2,2)=='X')&&(tictac(2,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(3,1)=='X')&&(tictac(3,2)=='X')&&(tictac(3,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,1)=='X')&&(tictac(2,1)=='X')&&(tictac(3,1))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,2)=='X')&&(tictac(2,2)=='X')&&(tictac(3,2))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,3)=='X')&&(tictac(2,3)=='X')&&(tictac(3,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,1)=='X')&&(tictac(2,2)=='X')&&(tictac(3,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,3)=='X')&&(tictac(2,2)=='X')&&(tictac(3,1))=='X';
            disp('You Lose!!!')
            break
        end
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%USER 3rd turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        usednum=[5,user1,CPU2,user2,CPU3];
        user3=input('It is your turn again! Choose wisely:\n>');
        for i=1:length(usednum)
            if user3==usednum(i)
                user3=input('Try again or you you will not get to choose!\n>');
            elseif user3>9
                user3=input('Try again or you you will not get to choose!\n>');
                break
            end
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
        
        %%%Winning statements for USER
        %The following lines are evaluated to see if the user has won or not.
        %If the 3 conditions are met, then it will display "You Win!!" and
        %change the gameover variable to 18.
        if(tictac(1,1)=='O')&&(tictac(1,2)=='O')&&(tictac(1,3))=='O';
            disp('You Win!!!')
            break
        elseif (tictac(3,1)=='O')&&(tictac(3,2)=='O')&&(tictac(3,3))=='O';
            disp('You Win!!!')
            break
        elseif (tictac(1,1)=='O')&&(tictac(2,1)=='O')&&(tictac(3,1))=='O';
            disp('You Win!!!')
            break
        elseif (tictac(1,3)=='O')&&(tictac(2,3)=='O')&&(tictac(3,3))=='O';
            disp('You Win!!!')
            break
        end
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%CPU 4th turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
        %%%%%%%%%%%%%Winning statements for the CPU
        if (tictac(1,1)=='X')&&(tictac(1,2)=='X')&&(tictac(1,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(2,1)=='X')&&(tictac(2,2)=='X')&&(tictac(2,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(3,1)=='X')&&(tictac(3,2)=='X')&&(tictac(3,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,1)=='X')&&(tictac(2,1)=='X')&&(tictac(3,1))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,2)=='X')&&(tictac(2,2)=='X')&&(tictac(3,2))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,3)=='X')&&(tictac(2,3)=='X')&&(tictac(3,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,1)=='X')&&(tictac(2,2)=='X')&&(tictac(3,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,3)=='X')&&(tictac(2,2)=='X')&&(tictac(3,1))=='X';
            disp('You Lose!!!')
            break
        end
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%USER 4th turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        usednum=[5,user1,CPU2,user2,CPU3,user3,CPU4];
        user4=input('It is your last turn! Finish strong:\n>');
        for i=1:length(usednum)
            if user4==usednum(i)
                user4=input('Try again or you you will not get to choose!\n>');
            elseif user4>9
                user4=input('Try again or you you will not get to choose!\n>');
                break
            end
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
        %%%Winning statements for USER
        if(tictac(1,1)=='O')&&(tictac(1,2)=='O')&&(tictac(1,3))=='O';
            disp('You Win!!!')
            break
        elseif (tictac(3,1)=='O')&&(tictac(3,2)=='O')&&(tictac(3,3))=='O';
            disp('You Win!!!')
            break
        elseif (tictac(1,1)=='O')&&(tictac(2,1)=='O')&&(tictac(3,1))=='O';
            disp('You Win!!!')
            break
        elseif (tictac(1,3)=='O')&&(tictac(2,3)=='O')&&(tictac(3,3))=='O';
            disp('You Win!!!')
            break
        end
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%CPU 5th turn%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
        %%%%%%%%Winning statements for CPU
        if (tictac(1,1)=='X')&&(tictac(1,2)=='X')&&(tictac(1,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(2,1)=='X')&&(tictac(2,2)=='X')&&(tictac(2,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(3,1)=='X')&&(tictac(3,2)=='X')&&(tictac(3,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,1)=='X')&&(tictac(2,1)=='X')&&(tictac(3,1))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,2)=='X')&&(tictac(2,2)=='X')&&(tictac(3,2))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,3)=='X')&&(tictac(2,3)=='X')&&(tictac(3,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,1)=='X')&&(tictac(2,2)=='X')&&(tictac(3,3))=='X';
            disp('You Lose!!!')
            break
        elseif (tictac(1,3)=='X')&&(tictac(2,2)=='X')&&(tictac(3,1))=='X';
            disp('You Lose!!!')
            break
        else
            disp('Good job! Nobody wins!')
            break
        end
        
    end
    %It prompts the user a message to play another game or exit. If they
    %want to play another game, they get directed to the beginning of the
    %while loop.
    playagain=input('Do you want to play? If you want to play enter a 1 but if you do not, enter any other number:\n>');  %%When it ties it doesn't ask if the user wants to play again or not
   
end
disp('It was nice while it lasted! Goodbye!')

