function [Pattern] = number2pattern(Number,k)

temp_number = Number;
residuals = [];
for i = 1:k
    R = mod(temp_number,4);
    residuals = [residuals,R];
    temp_number = (temp_number-R)/4;
end

% number to NT 
% conversion: A=0, C=1, G=2, T=3
for j = 1:k
    if residuals(end-j+1) == 0
        listPattern(j) = 'A';
    elseif residuals(end-j+1) == 1
        listPattern(j) = 'C';
	elseif residuals(end-j+1) == 2
        listPattern(j) = 'G';
	elseif residuals(end-j+1) == 3
        listPattern(j) = 'T';
    end
end

Pattern = join(listPattern);

end

