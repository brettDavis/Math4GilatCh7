function [y_final,E] = cosTaylor(x)

y = [];
e = [];

for n = 0:100

	y(n+1) = ((x^(2*n))*((-1)^n))/factorial(2*n);
end
	
for n = 1:100

	E(n) = abs((y(n+1)-y(n))/y(n));
end

for n = 1:100

	if E(n) <= .001;

	fprintf('nope');

	else

	trix_E(n) = E(n);

	end
end

y_final = sum(y);

table = [E',trix_E'];



%fprintf('\ntotal error is %3.2f \n',sum(E(1,1:10)))
%fprintf('%3.5f', y_final)
