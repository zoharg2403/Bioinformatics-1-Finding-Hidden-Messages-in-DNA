function [FrequentPatterns] = ApproximateFrequentWords_new(Text, K, d)
% Find the most frequent k-mers with mismatches in a string
% Input: A string Text as well as integers k and d. (You may assume k ? 12 and d ? 3)
% Output: All most frequent k-mers with up to d mismatches in Text
% NOTICE: this function returnes Patterns that do not appear in Text (which are most frequent with d mismatches)

% get all NT combos (with seq length K)
[allNTcombos,~] = allNTcombinations(K);

% count each NT combo with #mismatches <= d
PatternCount = [];
for i = 1:(4^K)
   PatternCount = [PatternCount; ApproximatePatternCount(Text, allNTcombos{i,1}, d)];
end

% find maximal frequency indices
maxFreq = max(PatternCount);
maxFreqInd = find(PatternCount == maxFreq);

% add most frquent words into cell 
FrequentPatterns = allNTcombos(maxFreqInd);

end

