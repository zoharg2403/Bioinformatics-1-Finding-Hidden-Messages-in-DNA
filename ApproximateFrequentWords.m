function [FrequentPatterns] = ApproximateFrequentWords(Text, K, d)
% Find the most frequent k-mers with mismatches in a string
% Input: A string Text as well as integers k and d. (You may assume k ? 12 and d ? 3)
% Output: All most frequent k-mers with up to d mismatches in Text

Count = [];
for i = 1:(length(Text) - K + 1)
   sub_text = Text (i:i+K-1);
   Count(i) = ApproximatePatternCount(Text, sub_text, d);
end
maxCount = max(Count);
maxCountIdx = find(Count == maxCount);

FrequentPatterns = {};
for j = 1:length(maxCountIdx)
    pattern = Text(maxCountIdx(j):maxCountIdx(j)+K-1);
    FrequentPatterns = [FrequentPatterns, {pattern}];
end

FrequentPatterns = unique(FrequentPatterns);

end

