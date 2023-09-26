clear
clc

income = input("Please input your yearly gains.");
taxCalc(income);

function tax = taxCalc(income)
if income >= 3000
    twoTax = 500*0.02;
    fourTax = 2500*0.04;
    fiveTax = (income - 3000)*0.05;
elseif income < 3000 && income > 500
    twoTax = 500*0.02;
    fourTax = (income-500)*0.04;
    fiveTax = 0;
else 
    twoTax = income*0.02;
    fourTax = 0;
    fiveTax = 0;
end
tax = twoTax + fourTax + fiveTax;
fprintf('Your yearly income tax is $ %.2f', tax)
end