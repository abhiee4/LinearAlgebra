function d = determinant(a)
%DETERMINANT takes a square matrix a and calculates its determinant
rows = size(a,1);
columns = size(a,2);
if(rows~=columns)
    error('Determinant can only be calculated for square matrices');
end

if size(a)==2
d=(a(1,1)*a(2,2)-a(1,2)*a(2,1));
return;
end

for i=1:rows
     b=a;
     b(1,:)=[];
     b(:,i)=[];
     if i==1
     d=((-1)^(i+1))*a(1,i)*determinant(b);
     else
    d=d+((-1)^(i+1))*a(1,i)*determinant(b);
 end
end
end

