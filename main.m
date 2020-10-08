clear all;
%%

% data = importdata('dataset_3014_4.txt');

%% Q5

Pattern = 'TGCATGGTAT';
d = 1;

neighbors = Neighbors(Pattern,d);

ANS5 = length(neighbors);

    



% dlmwrite('ANS.txt',solution,'delimiter',' ');
% dlmwrite('ANS.txt',neighbors', 'delimiter','');
