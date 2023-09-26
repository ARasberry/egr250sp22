clc %Clears the command window
dealer(4,13) %Calls the dealer function 

% The Dealer function takes two inputs, nPlayers which is the number of players
% in the game and nCards which is the number of cards dealt to each player,
% and returns the hands the players are dealt.

function hands = dealer(nPlayers, nCards) 
    if nPlayers > 52
        disp("How do you know this many people? Try again") %Funny error joke
    end
    if nCards*nPlayers > 52 % Error catching that goes off if more than 52 cards would be dealt
        disp("Error not enough cards in the deck. Try again.")
    else 
        deck = randperm(52); % Shuffles Cards
        currCard = 0; % Current card counter
        for i = 1:nPlayers % For loop that iterates through the number of players
            disp("Player " + i) % Prints the player whose hand is about to be dealt
            for n = 1:nCards % For loop that iterates through the number of cards in a hand
                currCard = currCard + 1; % currCard iterator
                rank = rem(deck(currCard),13); % Gives each iteration a number 0-12 that will be used to determine rank
                suitThing = floor(deck(currCard)/13); %Divides the numbers into 4 groups to use for suits
                if suitThing == 1 
                    suit = 'Diamonds';
                elseif suitThing == 2
                    suit = 'Spades';
                elseif suitThing == 3
                    suit = 'Clubs';
                else
                    suit = 'Hearts';
                 end
                if rank == 0
                    name = 'Ace';
                elseif rank == 1
                    name = '2';
                elseif rank == 2
                    name = '3';
                elseif rank == 3
                    name = '4';
                elseif rank == 4
                    name = '5';
                elseif rank == 5
                    name = '6';
                elseif rank == 6
                    name = '7';
                elseif rank == 7
                    name = '8';
                elseif rank == 8
                    name = '9';
                elseif rank == 9
                    name = '10';
                elseif rank == 10
                    name = 'Jack';
                elseif rank == 11
                    name = 'Queen';
                else 
                    name = 'King';
                end
                fprintf(sprintf('  %s of %s \n',name, suit)) %Formats the cards for displaying
            end
        end
    end
end