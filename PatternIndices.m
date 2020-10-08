function [PatternInd] = PatternIndices(seq,pat)
% input: seq - sequence , pat - pattern (both are strings)
% output: A collection of space-separated integers specifying all starting positions where pat appears as a substring of seq

PatternInd = [];
for i = 1:(length(seq)-length(pat)+1)
    if seq(i:i+length(pat)-1) == pat 
        PatternInd = [PatternInd,i];
    end
end
end
