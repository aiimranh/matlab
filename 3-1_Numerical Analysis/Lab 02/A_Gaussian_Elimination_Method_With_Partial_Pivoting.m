A=[1 2 3; 4 5 6];
b=[1 -2 5];
[m,n] = size(A); % checking the size of matrix


%==========================================================================
% Initialization
x = zeros(m,1);
l = zeros(m,m-1);

%==========================================================================
% Main Program
%==========================================================================

% Reducing Matrix A to upper triangular form

for k = 1:m-1
    % =========Performing Partial-pivoting=================================
        for p = k+1:m
            if (abs(A(k,k)) < abs(A(p,k)))
                A([k p],:) = A([p k],:);
                  b([k p]) = b([p k]);
            end
        end
    % =====================================================================
% =========Setting Matrix A to triangular form=================================
    for i = k+1:m
        l(i,k) = A(i,k)/A(k,k);
        for j = k+1:n
            A(i,j) = A(i,j)-l(i,k)*A(k,j);
        end
        b(i) = b(i)-l(i,k)*b(k);
    end
end

for k = 1:m-1
    for i = k+1:m
        A(i,k) = 0;
    end
end

%==========================================================================
% Backward substitution of Matrix A
%==========================================================================
x(m) = b(m)/A(m,m);

for i = m-1:-1:1
    sum = 0;
    for j = i+1:m
        sum = sum + A(i,j)*x(j);
    end
    x(i) = (b(i)- sum)/A(i,i);
end

%==========================================================================
end