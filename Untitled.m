clc;clf;clear;close all;
%����
N=256
n=0:N-1;

%Ƶ��

f=0.01;

%�ź�

y1=sin(2*pi*f*n);

y1(1:N/8)=y1(1:N/8)+1;

%����y1��fft�׷���

%���߽϶ֱ࣬�ӻ��İ���

figure;

plot(abs(fft(y1)));

%���źŽ��нض�

y2s=y1(1:N/2);

%����y1�ضϺ�û�в����fft�׷���

figure;

fy2s=abs(fft(y2s));

stem(fy2s);

%Ȼ����ʹy1��y2һ����

y2=[y2s zeros(1,N-(N/2))];

%��һ����ͼ����

figure;

%����y1��fft�׷���

%���߽϶ֱ࣬�ӻ�����

plot(abs(fft(y1)));

%��ͬһ��figure�м�����ͼ

hold on;

%����y2��fft�׷���(��ɫ)

%���߽϶ֱ࣬�ӻ�����

plot(abs(fft(y2)),'r');

%����y2s��fft������

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

