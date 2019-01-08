clc;clf;clear;close all;
%点数
N=256
n=0:N-1;

%频率

f=0.01;

%信号

y1=sin(2*pi*f*n);

y1(1:N/8)=y1(1:N/8)+1;

%绘制y1的fft谱幅度

%谱线较多，直接画的包络

figure;

plot(abs(fft(y1)));

%对信号进行截短

y2s=y1(1:N/2);

%绘制y1截断后没有补零的fft谱幅度

figure;

fy2s=abs(fft(y2s));

stem(fy2s);

%然后补零使y1和y2一样长

y2=[y2s zeros(1,N-(N/2))];

%打开一个绘图窗口

figure;

%绘制y1的fft谱幅度

%谱线较多，直接画包络

plot(abs(fft(y1)));

%在同一个figure中继续绘图

hold on;

%绘制y2的fft谱幅度(红色)

%谱线较多，直接画包络

plot(abs(fft(y2)),'r');

%绘制y2s的fft幅度谱

stem(1:2:N,fy2s,'k');

hold off;
j=4
for i=1:1:N/j
    
    y3(i) = (y1(j*i-3)+y1(j*i-2)+y1(j*i-1)+y1(j*i-0))/j;
    %y3(i) = (y1(j*i-1)+y1(j*i-0))/j;
end
figure;plot(y3)
figure;
fy3=abs(fft(y3));
stem(fy3);

figure;
plot(abs(fft(y1)));
hold on;
plot(abs(fft(y2)),'r');
plot(1:2:N,fy2s,'k*');
stem(1:j:N,fy3,'b');
hold off;

