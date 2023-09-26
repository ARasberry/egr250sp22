% Austin Rasberry 
% arasberr

clear %clears workspace
clc %clears command window

givenText = 'I thrive under pressure, with adrenaline flowing, and under these circumstances, I am able to structure time so that everything happens in an orderly and convenient manner.';
countOP(givenText) %Function call 1
countOPNoLoop(givenText)%Function call 2

% Function takes a given text and uses a for loop to iterate through
% and count the number of 'o's and 'p's in the given text
function [oCounter, pCounter] = countOP(givenText)
    oCounter = 0; %Initializing variable oCounter
    pCounter = 0; %Initializing variable pCounter
    for i = 1:length(givenText) %for loop iterates from one through the length of given text
        if givenText(i) == char('o') %if statement to find 'o's
            oCounter = oCounter + 1; %counter raises one if an 'o' is found
        end
        if givenText(i) == char('p') %if statement to find 'p's
            pCounter = pCounter + 1; %counter raises one if a 'p' is found
        end
   
    end
    %displays counts
    disp(oCounter); 
    disp(pCounter);
end

% Function takes a givent text and counts the number of 'o's and 'p's using
% logical indexing
function [oCounter, pCounter] = countOPNoLoop(givenText)

    oCounter = count(givenText,'o');
    pCounter = count(givenText,'p');
    disp(oCounter);
    disp(pCounter);
end
