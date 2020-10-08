function [Kmers] = ClumpFinding(seq, k, L, t)
% Find patterns forming clumps in a string.
% input: A string Genome (seq), and integers k, L, and t.
% L = length of substring 
% k = length of k-mer (pattern)
% t = number of times the k mer has to appear in substring (at least)
% output: All distinct k-mers forming (L, t)-clumps in Genome.
% finds Genome of length L in which a k-mer appears at least t times.

Kmers = {};

for i = 1:(length(seq)-L+1)
    [FrequentPatterns, maxFreq] = FrequentWords_fast(seq(i:i+L-1),k); % call array
    if maxFreq >= t
        Kmers = horzcat(Kmers,FrequentPatterns');
    end

end
    
Kmers = unique(Kmers);

end

