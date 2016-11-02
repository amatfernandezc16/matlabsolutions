function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Clara Amat Fernandez
%
%         DUE: October 27
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it,
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
    'This program plays the game of Guess That Number in which you have to guess\n', ...
    'a secret number.  After each guess you will be told whether your \n', ...
    'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ');
%%%%ERROR!!!! The conditional had to be an AND instead of OR
while (level ~= beginner && level ~= moderate) && level ~= advanced
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
    
end

% set highest secret number based on level selected
%%% ERROR!!!! = is to name or change a variable. In this case it needs to be == to make
%%%it a conditional
if level == beginner
    
    highest = beginnerHighest;
    
elseif level == moderate
    
    highest = moderateHighest;
    
else
    %%%ERROR!!!! advanceHighest was not capitalized. The H needs to be capitalized to match the variable name above.
    highest = advancedHighest;
end

% randomly select secret number between 1 and highest for level of play
%%%ERROR!!!! 'rand' function was not right. Changed the 'rand' for 'randsample' and set the range from 0 to
%%%highest and only one output.
secretNumber = floor(randsample(highest,1));

% initialize number of guesses and User_guess
%%%ERROR!!!! Need to change numOfTries value to 0 so it matches with the number of
%%%times that the while loop runs
numOfTries = 0;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
    
    % get a valid guess (an integer from 1-Highest) from the user
    
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
    numOfTries = numOfTries + 1;
    
    %%%ERROR!!!! Need to remove the equal sign so the user can input the highest
    %%%number possible (i.e. 10, 100, or 1000).
    while userGuess < 1 || userGuess > highest
        
        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
        
        userGuess = input('');
        
        
    end % of guess validation loop
    
    % add 1 to the number of guesses the user has made
    
    % report whether the user's guess was high, low, or correct
    %%%ERROR!!!! userGuess was <=. It has to be lower than secretNumber to match the display
    %%%message.
    if userGuess < secretNumber
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif numOfTries == 1
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else
        %%%ERROR!!!! The second %d jumps to the next fprintf. Need to write numberOfTries
        %%%following secretNumber so both values are displayed.
        fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
            secretNumber,numOfTries);
        %%%ERROR!!!! Need 'end' at the end of this conditional
    end
    
    %%%ERROR!!!! Need to end the while loop. Input 'end' at the end of it.
end% of guessing while loop
%%%ERROR!!!! Game Over message needs to be at the end so it is only displayed when
%%%the user finishes.
fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
end  %end of funciton

% end of game