function [count] = PatternCount(text,pattern)
% input: text and pattern (both string)
% output: count - number of times that the pattern is in the text 
count = 0;
for i = 1:(length(text)-length(pattern)+1)
    if text(i:i+length(pattern)-1) == pattern 
        count = count + 1;
    end
end

