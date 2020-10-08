function[FrequentPatterns] = ApproximateFrequentWords_WithReverseComplements(Text, K, d)
% Frequent Words with Mismatches and Reverse Complements Problem: Find the most frequent k-mers (with mismatches and reverse complements) in a string.
% Input: A DNA string Text as well as integers k and d.
% Output: All k-mers Pattern maximizing the sum Countd(Text, Pattern)+ Countd(Text, Patternrc) over all possible k-mers.

% get all NT combos (with seq length K)
[allNTcombos,~] = allNTcombinations(K);

% count each NT combo with #mismatches <= d (counting ReverseComplements in addition)
allPatternsCount = [];
for i = 1:(4^K)
   Pattern_i = allNTcombos{i,1};
   comPattern_i = seqrcomplement(Pattern_i);
   PatternCount = ApproximatePatternCount(Text, Pattern_i, d) + ApproximatePatternCount(Text, comPattern_i, d);
   allPatternsCount = [allPatternsCount; PatternCount];
end

% find maximal frequency indices
maxFreq = max(allPatternsCount);
maxFreqInd = find(allPatternsCount == maxFreq);

% add most frquent words into cell 
FrequentPatterns = allNTcombos(maxFreqInd);
FrequentPatterns = unique(FrequentPatterns);

end

