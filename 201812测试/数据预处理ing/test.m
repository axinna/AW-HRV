load raw1812161800.mat
var = raw; 
len = length(raw);


for i=len:-1:1
    if raw(i) >= 1.2 || raw(i) <= 0.3
        var(i) = [];
    end
end

len= length(var);
changeflag=0;
j=0;
for i=1:len-1
    if var(i) ~= var(i+1)
        j=j+1;
        result(j,1)=var(i);
    end
end
var=result;
len = length(var);
result=[];
isFive = 0;
j = 1;result(j)=0;

for i=1:1:len

        if isFive == 5
            isFive = 0;
            result(j) = result(j) / 5;
            j = j+1;
            result(j) = 0;
        end
        isFive = isFive + 1;
        result(j) = result(j) + var(i);

end
result(j) = result(j) / isFive;
%result = result';