function [count] = ApproximatePatternCount(text, pattern, d)
%Given strings Text and Pattern as well as an integer d, we define Count_d(Text, Pattern) as the total number of occurrences of Pattern in Text with at most d mismatches.
% Input: Strings Pattern and Text as well as an integer d.
% Output: Count_d(Text, Pattern)

count = 0;

for i = 1:(length(text)-length(pattern)+1)
    sub_text = text(i:i+length(pattern)-1);
    mismatchNum = HammingDistance(sub_text,pattern);
    if mismatchNum <= d
        count = count + 1;
    end
end

end

