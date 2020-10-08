function [NTcombos, NUMcombos] = allNTcombinations(K)
% find all possible NT sequences with length k

% all combinations of selecting one of [0 1 2 3] K times (with repititions)
numComb = zeros(4^K,K);
rep = 1;
for i = 1:K
    column_vect = repmat([0:3],rep,1);
    column_vect = column_vect(:);
    numComb(:,end-i+1) = repmat(column_vect,(4^K)/length(column_vect),1);
    rep = rep*4;
end
NUMcombos = numComb;

NTcombosCell = cell(4^K,K);
% conversion: A=0, C=1, G=2, T=3
NTcombosCell(numComb == 0) = {'A'};
NTcombosCell(numComb == 1) = {'C'};
NTcombosCell(numComb == 2) = {'G'};
NTcombosCell(numComb == 3) = {'T'};

% conversion from mat to strings:

NTcombos = join(NTcombosCell, "");


% NTcombos = {};
% for j = 1:4^K
%     pattern = join(char(numComb(j,:)));
%     NTcombos = [NTcombos;{pattern}];
% end

end

