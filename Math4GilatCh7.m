%%Chapter 7 Problems

%<Brett Davis><Math4 Spring Semster>
%<problems 6,10,14,20,22,26>

%%Problem_6
clear all
close all
% The maximum daily temperature in (F) for New York City, and Anchorage AK,
%during the month of January 2001, are given in the vectors below. (data from
%NOAA)

fprintf('\nProblem 6\n')

TNY = [31 26 30 33 33 39 41 41 34 33 45 42 36 39 37 45 43 36 41 37 32 32 35 42 38 33 40 37 36 51 50];

TANC =[37 24 28 25 21 28 46 37 36 20 24 31 34 40 43 36 34 41 42 35 38 36 35 33 42 42 37 26 20 25 31];

%error catching

TNY_length  = length(TNY);
TANC_length = length(TANC);

if TNY_length ~= TANC_length
	fprintf('The two temperature vectors are not the same length')
else
	fprintf('\n Vectors Passed \n ')
end


		


%A) calculate the average temperature for the month in each city

TNY_avg  = mean(TNY);
TANC_avg = mean(TANC);
fprintf('\nA) The average temperature for New York City was %1.2f\n',TNY_avg)
fprintf('   The average temperature for Anchorage, AK was %1.2f\n',TANC_avg)

%B) How many days was the temperature below average?

days_below_TNY = find(TNY < TNY_avg);
days_below_TANC = find(TANC < TANC_avg);

fprintf('\nB) The number of days when New York had a lower than average value was: %1.0f',length(days_below_TNY))

fprintf('\n   The number of days when Anchorage, AK had a lower than average value was: %1.0f  \n ',length(days_below_TANC))

%C) How many days and which days in the month was the temperature higher in 
%   Anchorage than it was in New York

days_TNY_lessthan_TANC = find(TNY < TANC);

fprintf('\nC) The days of the month that Anchorage was hotter than New York were: \n   ')
fprintf('%1.0f ',days_TNY_lessthan_TANC)
fprintf('\n')
fprintf('\n   This makes %1.0f days all together\n',length(days_TNY_lessthan_TANC)) 

%D) How many days, and which days of the month, was the temperature the same in
%   both cities.

days_same = find(TNY == TANC);

fprintf('\nD) There was %1.0f day(s) when the temperatures were the same.',length(days_same))
fprintf('\n   The day(s) of the month was: ')
fprintf('%1.0f',days_same)
fprintf('\n')

%E) How many days, and in which days of the month was the temperature of both
%   cities above freezing?

BothTemps = [TANC;TNY];

n     = length(BothTemps);
pairs = BothTemps(:,1:n);
trix_a= zeros(2,n);
trix_b= zeros(2,n);
days_notfreezing = 0;

%calculate number of days not freezing

for k = [1:n]
	if (pairs(1,k) > 32) & (pairs(2,k) > 32)
		trix_a(1,k) = pairs(1,k);
		trix_a(2,k) = pairs(2,k);
		days_notfreezing = days_notfreezing + 1;
	else 
		continue
        end	
end

%calculate day of month

dayofmonth = find(trix_a(1,:) ~= trix_b(1,:));

fprintf('\nE) There were %1.0f days where both Anchorage and New York were not freezing',days_notfreezing)

fprintf('\n   These were the days of the month on which the previously stated condition occured:  \n   ')
fprintf('%1.0f ',dayofmonth)
fprintf('\n')

%%Problem 7
clear all
close all
%Use matlab to solve the given conditional equation.

y = [];
counter = 1;

for x = -2:1:5; 

	if x <=  -1
		y(1,counter) = 15;
		counter = counter + 1;
	elseif x > -1 & x <= 1
		y(1,counter) = (-5 .* x) + 10;
		counter = counter + 1;
	elseif x >  1 & x <= 3
		y(1,counter) = (-10 * (x.^2)) + (35 * x) - 20;
		counter = counter + 1;
	elseif x >  3 & x <= 4
		y(1,counter) = (-5 .* x) + 10;
		counter = counter + 1;
	elseif x >  4
		y(1,counter) = -10;
		counter = counter + 1;
	else
		continue
	end
end

%Disp

fprintf('\n              Problem 7\n')

x   = [-2:1:5]';
table =[x,y'];
fprintf('\n           x            y \n')
disp(' ')
disp(table)


%Plot
x = [-2:1:5];
plot(x,y,'--r*')
title('Problem 7')
xlabel('x')
ylabel('y')

%%Problem 10
clear all
close all
% 
%Write a program, using a loop that determines this expression:

%NOTE: THERE IS A TYPO IN THE BOOK AND THE NUMERATORS CONTAINING THE VALUES OF
% KK-1 IS WRONG!!!

m = [10 1000 10000];

for k = 1:3

	if k == 1
		
		for kk = 1:m(1)

			m10(1,kk) = 1^(kk-1)/(kk^2);
			a	    =  sqrt(12 * (sum(m10)));	
		end

	elseif k == 2
	
		for kk = 1:m(2)

			m1000(1,kk) =  1^(kk-1)/(kk^2);
			b	    =  sqrt(12 * (sum(m1000)));	
		end

	else
	
		for kk = 1:m(3)

			m10000(1,kk) = 1^(kk-1)/(kk^2);
			c	    =  sqrt(12 * (sum(m10000)));	
		end
	
	end
end

fprintf('\nProblem 10 \n')
fprintf('\nm of 1:10 = %3.3f',a)
fprintf('\nm of 1:100 = %3.3f',b)
fprintf('\nm of 1:10000 = %3.3f',c)
fprintf('\n')

%%Problem 14
clear all
close all
% Write a user defined function that calcuates the value of cos(x) by using
%a taylor series expansion.

%This problem calls the function cosTaylor(x)
%note: x is in radians

part_a = cosTaylor(.959931090);

part_b = cosTaylor(3.31612560);  


fprintf('\nProblem 14 \n')
fprintf('\n The cosine value for 55 degrees is %3.4f ',part_a)

fprintf('\n The cosine value for 190 degrees is %3.4f\n',part_b)

%%Problem 22
clear all
close all
% A fuel tank is made of a rectangular prisim center and half circular cylinders
% at the top and bottom as shown, where:

%r = 20cm

%H = 15cm

%L = 60cm

% Write a user defined function that gives the volume of the fuel in the tank
% in Liters as a function of the height h (measured form the bottom

%calls function volFuel(waterHgt)

%main

for n = 0:55

	y(n+1) = volFuel(n);
end

%disp

x = [0:55];
table = [x',y'];

fprintf('\n              Problem 22\n')
fprintf('\n Volume Table for Water Heights 0:55 cm\n')
disp(' ')
disp(table)


%plot
	

plot(x,y,'r','LineWidth',1.3)
hold on
plot(20,volFuel(20),'b*')
plot(35,volFuel(35),'b*')
legend('Volume','Shape Change','Location','SouthEast')
xlabel('Water Height  <cm>')
ylabel('Volume  <cm^3>')
title('(:| Problem 22 || Math4GilatCh7 |:)')
