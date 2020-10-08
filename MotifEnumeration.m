function [kd_motifs] = MotifEnumeration(Dna,k,d)
% Implanted Motif Problem: Find all (k, d)-motifs in a collection of strings.
% k_mer is a (k,d)_motif if it appears in every string from Dna with at most d mismatches
% Input: A collection of strings Dna, and integers k and d.
% Output: All (k, d)-motifs in Dna.

kd_motifs = {}; % an empty set

[NTcombos,~] = allNTcombinations(k); % all k_mers options

for PT = 1:length(NTcombos) % for each k_mer in NTcombos
    k_mer = NTcombos{PT}; 
    k_mer_count = cellfun(@(x) ApproximatePatternCount(x, k_mer, d),Dna); % count how many times the k_mer appears in each Dna string  
    if ~any(k_mer_count == 0) % if the k_mer appears in all Dna strings (with max d mismatches)
        kd_motifs = [kd_motifs, {k_mer}]; % add the k_mer to kd_motifs set
    end
end




end

