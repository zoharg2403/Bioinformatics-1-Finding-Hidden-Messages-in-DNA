function PatternStartInd2txtFile(seq,pat)
% Return a space-separated list of starting positions (in increasing order) where the pattern appears as a substring in the genome.
% input:seq = genome sequence , pat = nucleptid pattern 
% output: ANS = .txt file, comtaining space-separated list of starting positions where pat appeares in seq (first position = index 0)

PatternInd = [];
for i = 1:(length(seq)-length(pat)+1)
    if seq(i:i+length(pat)-1) == pat 
        PatternInd = [PatternInd, i-1];
    end
end

dlmwrite('ANS.txt',PatternInd,'delimiter',' ', 'precision', '%u');

end

