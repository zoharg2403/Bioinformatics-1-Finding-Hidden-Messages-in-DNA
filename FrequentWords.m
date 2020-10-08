function [FrequentPatterns] = FrequentWords(Text,K)
% input: A string Text and an integer k
% output: All most frequent k-mers in Text

FrequentPatterns = {};
Count = [];
for i = 1:(length(Text) - K + 1)
   pattern = Text (i:i+K-1);
   Count(i) = PatternCount(Text, pattern);
end
maxCount = max(Count);
for i = 1:(length(Text) - K + 1)
    if Count(i) == maxCount
       FrequentPatterns = [FrequentPatterns, {Text(i:i+K-1)}];
    end 
end 
FrequentPatterns = unique (FrequentPatterns);
end

