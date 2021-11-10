function [C] = maxmin(A, B)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
height = size(A,1);
width = size(B,2);
term = size(A,2);
C = zeros(height, width);

for i = 1:1:height
    for j = 1:1:width
        c = [];
        for k = 1:1:term   
            c = [c min(A(i,k), B(k,j))];
        end
        
        C(i,j) = max(c);
    end
end

