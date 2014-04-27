function [theta radius] = CartToPolar(x,y)

	
if x > 0 & y > 0 %QI

	theta = atan(y/x);
	radius = sqrt((x^2) + (y^2));
	fprintf('(%3.2f,%3.2f)',theta,radius)
	
elseif x < 0 & y > 0 %QII

	theta = -atan(y/x);
	radius = sqrt((x^2) + (y^2));
	fprintf('(%3.2f,%3.2f)',theta,radius)
		
elseif x < 0 & y < 0 %QII

	theta = atan(y/x);
	radius = sqrt((x^2) + (y^2));
	fprintf('(%3.2f,%3.2f)',theta,radius)
else

	theta = atan(y/x); %QIV
	radius = sqrt((x^2) + (y^2));
	fprintf('(%3.2f,%3.2f)',theta,radius)
	
end
