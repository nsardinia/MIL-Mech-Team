function C=add(A,B)
% This is the function which adds
% the matrices A and B. It duplicates the MATLAB
% function A+B.
[m,n]=size(A);
[k,l]=size(B);
if m~=k | n~=l,
    disp('ERROR using add: matrices are not of the same size')
    C=sym('empty_matrix');
    return,
end

C=zeros(m,n);
for i=1:m
    for j=1:n
        C(i,j)=A(i,j)+B(i,j);
    end
end