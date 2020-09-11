clc;
close all;
clear;
ite = 365;
fileID = fopen('Input_bin.mem','r');
FPGA_Y=double(zeros(ite,1));
tline = fgetl(fileID); 
for i=1:ite
    b=str2double(regexp(tline,'\d','match'));
    ex = -12;
    bit=size(b,2);
    for j=1:size(b,2)
        FPGA_Y(i)=FPGA_Y(i)+b(bit)*2^(ex);
        ex=ex+1;
        bit=bit-1;
    end
    if (b(1)==1)
        FPGA_Y(i)=FPGA_Y(i)-2^2; %Conversión de complemento 2
    end
    tline = fgetl(fileID);
end

Fs = 1;
n = 1:365;
x = cos(2*pi*(1/7)*n)+cos(2*pi*(1/30)*n-pi/4);
x=x';

figure;
subplot(3,1,1)
plot(n,x)
xlabel('Days')
grid

subplot(3,1,2)
plot(n,FPGA_Y)
xlabel('Days')
grid