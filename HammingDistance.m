function [D] = HammingDistance(seqP,seqQ)
% Input: Two strings of equal length.
% Output: The Hamming distance between these strings (the number of mismatches - number of times where seqP_i~=seqQ_i)
D = 0;

for i = 1:length(seqP)
    if seqP(i) ~= seqQ(i)
        D = D + 1;
    end 
end

end

