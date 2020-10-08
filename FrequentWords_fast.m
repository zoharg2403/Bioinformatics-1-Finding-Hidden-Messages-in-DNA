function [FrequentPatterns, max_freq] = FrequentWords_fast(Text,K)
% input: A string Text and an integer k
% output: All most frequent k-mers in Text, max_freq = number of times the k-mer appeare
substring = [];
for i = 1:(length(Text) - K + 1)
   substring = [substring; string(Text(i:i+K-1))];
end

cat_substring = categorical(substring);
uniqe_cat_substring = categories (cat_substring);
count_substring = countcats(cat_substring);
max_freq = max(count_substring);
FrequentPatterns = uniqe_cat_substring (count_substring == max_freq);
end

