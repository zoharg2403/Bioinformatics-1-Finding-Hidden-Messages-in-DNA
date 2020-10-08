function [neighbors] = Neighbors(Pattern,d)
% Input: NT pattern and d = number of mismatch allowd - A string Pattern and an integer d.
% Output: neighbors = all patterns with #mismatch <= d from the Pattern

neighbors = {};

% singular solutions
if length(Pattern) == 1 && d >= 1
    neighbors = [{'A'} , {'C'}, {'G'}, {'T'}];
elseif d == 0
    neighbors = {Pattern};
end

% otherwise:
if d ~= 0 && length(Pattern) ~= 1
    % all possibles patterns with same length as Pattern
    [allOptions,~] = allNTcombinations(length(Pattern));

    % for each pattern, calculate mismatch number, save fitting patterns into neighbors list
    for P = 1:length(allOptions)
        PatternCandidate = allOptions{P};
        mismatchNum = HammingDistance(PatternCandidate,Pattern);
        if mismatchNum <= d
           neighbors = [neighbors, {PatternCandidate}]; 
        end
    end
end

end

