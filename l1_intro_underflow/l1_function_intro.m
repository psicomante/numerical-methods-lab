% Lesson 01 - Matlab Functions Intro, Copyright 2013, Roberto 'psicomante' Pesando
%  
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or (at
% your option) any later version.
% 
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
% or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
% for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program as the file LICENSE.txt; if not, please see
% http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.

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
