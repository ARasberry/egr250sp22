clear 
clc
x = input("enter the exponentiation of e"); %Obtains value of x
myExpFunction(x); %Calls function
function expx = myExpFunction(x) %Defines function
n = 0; %counter to be iterated through
term = 1; %the individual instances to be added together
expx = term; %the sum 
while abs(term) > 1.e-12 %while loop that iterates until the term is so small
                         %it is basically zero
    n = n+1; %counter keeping up with iterations
    term = x^n/factorial(n); %formula for the instances
    expx = expx + term; %sums being added together
end
fprintf("The value of e^%f is %f",x,expx); %displays the answer
end
