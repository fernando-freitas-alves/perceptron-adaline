%% DATASETS
% Input
%   X:      matrix
%   lblCol: column number where labels are set
% Output
%   S:      struct of matrices for each label
%
function S = datasets(X, lblCol)
    lbl       = X(:, lblCol);
    ulbl      = unique(lbl)';
    ncols     = size(X, 2);
    allButLbl = [1:(lblCol-1) (lblCol+1):ncols];
    for l = ulbl
        name = ['x' num2str(l)];
        idx  = X(:, lblCol) == l;
        S.(name) = X(idx, allButLbl);
    end
end
