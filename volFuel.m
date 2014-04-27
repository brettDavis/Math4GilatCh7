function [volume] = volFuel(waterHgt) 
	
%vars
	
L        = 60; %cm;

radius   = 20; %cm;

%main

if waterHgt >= 0 & waterHgt <= 20

	theta_d    =  acos((radius-waterHgt)./(radius));

	areaSector = .5 .* (radius.^2) .* (2.*theta_d);

	triangleHgt= sqrt((radius.^2) - (radius - waterHgt).^2);

	minusTri   = areaSector - ((radius-waterHgt) .* (triangleHgt));

	volume_cyl = L .* (minusTri);

	volume     = volume_cyl;

elseif waterHgt > 20 & waterHgt <= 35
	
	volume_box = L * 40 * (waterHgt - 20);

	volume     = volume_box + 37691.18; %volume of half full cyl
	
elseif waterHgt > 35 & waterHgt <= 55

	theta_d    = acos((radius-(waterHgt-15))./(radius));
	
	areaSector = .5 .* (radius.^2) .* (2.*theta_d);

	triangleHgt= sqrt((radius.^2) - (radius - (waterHgt-15)).^2);

	minusTri   = areaSector - ((radius-(waterHgt-15)) .* (triangleHgt));

	volume_cyl = L .* (minusTri);

	volume     = volume_cyl + 36000; %volume of full box
end
