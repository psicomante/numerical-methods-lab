% Lesson 01 - Matlab Functions Intro, Copyright 2013, Roberto 'psicomante' Pesando

% basic function
function l1_function_intro()

some_variable = 2;
other_variable = -3;
plot(some_variable, other_variable)

% calls the function
private(1,2)

% prints out the vector, because the ; is not present
[p,q] = private2(5,10)

end

% function with two parameters
function s = private(a,b)

s = a + b;

end

% function with two parameters and vector with two values as output
function [d,s] = private2(a,b)

s = a + b;
d = a - b;

end
