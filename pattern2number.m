function [Number] = pattern2number(Pattern)
% conversion: A=0, C=1, G=2, T=3
numPattern = [];
for i = 1:length(Pattern)
    if Pattern(i) == 'A'
        numPattern(i) = 0;
    elseif Pattern(i) == 'C'
        numPattern(i) = 1;
    elseif Pattern(i) == 'G'
        numPattern(i) = 2;
    elseif Pattern(i) == 'T'
        numPattern(i) = 3;
    end
end

Number = 0;
for j = 1:length(Pattern)
   Number = Number + (numPattern(end-j+1)*(4^(j-1)));
end

end

