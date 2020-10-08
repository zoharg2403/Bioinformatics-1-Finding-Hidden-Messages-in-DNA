function [Skew_i] = SkewDiagram (seq)
% input: seq = Genome
% output: Skew_i = The difference between the total number of occurrences of G and the total number of occurrences of C in the first i nucleotides of Genome
% If the i nucleotide is G: then Skew_i+1(seq) = Skew_i(seq) + 1
% if the i nucleotide is C: then Skew_i+1(seq)= Skew_i(seq) – 1
% otherwise: Skew_i+1(seq) = Skew_i(seq)

Skew_i = zeros(1,length(seq)+1);

for i = 1:length(seq)
    if seq(i) == 'G'
      Skew_i(i+1) = Skew_i(i) + 1;
    elseif seq(i) == 'C'
      Skew_i(i+1) = Skew_i(i) - 1;
    else 
      Skew_i(i+1) = Skew_i(i);
    end
end

end

