//GAUSS ELIMINATION WITHOUT PIVOT:

A = [1,3,2;2,-1,1;1,2,3];
B = [5;-1;2];

//TAKING SIZE OF A:
[n,n] = size(A);

//INITIALIZING X MATRIX:
x = zeros(n,1);

for i=1:n-1
    m = A(i+1:n,i)/A(i,i);
    A(i+1:n,:) = A(i+1:n,:)-m*A(i,:);
    B(i+1:n,:) = B(i+1:n,:)-m*B(i,:);
end

disp(A);
disp(B);
//BACK SUBSTITUTION:

x(n,:) = B(n,:)/A(n,n);
for i = n-1:-1:1
    x(i,:) = (B(i,:)-A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end

disp(x);
