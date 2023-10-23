AT = [1,4,7;2,5,8;3,6,9]

A = [1,2,3;4,5,6;7,8,9];
a = det(A);
A1 = [1,2,3;4,5,6;7,8,9];
a1 = det(A1);
X1 = a1/a;
X2 = a1/a;
eq1 = X1+X2;
eq2 = X1+2*X2+2;
Aeq = [eq1,eq2];
disp(Aeq);


B = [1 2 3
     1 5 6
     1 8 9];

C = [8
     14
     11];

matrixSize = length(B);

Lower=zeros(size(B));

Upper=zeros(size(B));

Lower(:,1)=B(:,1);

Upper(1,:)=B(1,:)/Lower(1,1);

Upper(1,1)=1; % Set identity matrix

 

for k =2:matrixSize

for j =2:matrixSize

    for i=j:matrixSize

        Lower(i,j)= B(i,j)-dot(Lower(i,1:j-1),Upper(1:j-1,j));

    end

    Upper(k,j)=(B(k,j)-dot(Lower(k,1:k-1),Upper(1:k-1,j)))/Lower(k,k);

end

end

Upper

Lower

 

% LY = B

 

Y = zeros(matrixSize,1);

Y(1)=B(1);

for row = 2:matrixSize

    Y(row) = C(row);

    for col = 1: row-1

        Y(row)=Y(row)-Lower(row,col)*Y(col);

    end

    Y(row)= Y(row)/Lower(row,row);

end

Y

 

%UX = Y

 

x =zeros(matrixSize,1);

x(matrixSize)=Y(matrixSize)/Upper(matrixSize,matrixSize);

for row = matrixSize -1: -1 : 1    %Second to the last row

    temp =0;

    for col= matrixSize: -1 : 1

        temp = temp + Upper(row,col)*x(col);

    end

    x(row)=(Y(row)-temp)/Upper(row,row);

end

x













