function y= flops(a)
%Calculates flops for a full matrix a
%O(n)=n*O(n-1)+n+(n-1)

b=0;

if b==0
s=size(a,1);
b=1;
end

if size(a,1)==2
y=3;%a11*a22-a12*a21
return;
end

for i=1:s
     b=a;
     b(1,:)=[];
     b(:,i)=[]; 
     
 if i==1
    y=0;
 end
 y=y+flops(b);
end
 y=y+(2*s-1);%s+(s-1)
end

