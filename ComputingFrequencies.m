function [FrequencyArray, FrequencyStruct] = ComputingFrequencies(Text,K)

FrequencyArray = zeros(1,4^K);
FrequencyStruct = [];

for i = 1:(length(Text)-K+1)
   Pattern = Text(i:i+K-1);
   idx = pattern2number(Pattern)+1;
   FrequencyArray(idx) = FrequencyArray(idx)+1;
   if isfield(FrequencyStruct,Pattern)
       FrequencyStruct.(Pattern) = FrequencyStruct.(Pattern) + 1;
   else 
       FrequencyStruct.(Pattern) = 1;
   end
end

end

