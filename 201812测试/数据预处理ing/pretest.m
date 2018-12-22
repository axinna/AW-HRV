% hrData_raw = textread('C:\Users\Administrator\Desktop\20181216²âÊÔ\test.txt','%n');
% load raw1812162220.mat
var = raw; 
len = length(raw);

for i=len:-1:1
    if raw(i) >= 1.2 || raw(i) <= 0.5
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



