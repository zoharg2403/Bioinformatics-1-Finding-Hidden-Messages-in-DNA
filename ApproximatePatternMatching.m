function [PatternIndices] = ApproximatePatternMatching(Text, Pattern, d)
% Find all approximate occurrences of a pattern in a string
% Input: Strings Pattern and Text along with an integer d.
% Output: All starting positions where Pattern appears as a substring of Text with at most d mismatches.
PatternIndices = [];

for i = 1:(length(Text)-length(Pattern)+1)
    sub_seq = Text(i:i+length(Pattern)-1);
    Distance = HammingDistance(Pattern, sub_seq);
    if Distance <= d
        PatternIndices = [PatternIndices, i];
    end
end

end

