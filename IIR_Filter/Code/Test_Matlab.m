clc;
close all;
clear;

Fs = 1;
n = 1:365;

x = cos(2*pi*(1/7)*n)+cos(2*pi*(1/30)*n-pi/4);



%% IIR 
ord = 4;
[bq,aq] = cheby1(ord,0.2,0.1);

%% Filter
yiir_2 = filter(bq,aq,x);

%% 
b = fliplr(bq); %invertimos los coeficientes
a = fliplr(aq); %invertimos los coeficientes
a(end) = [];    %Se elimina el ultimo coeficiente ya que no se utiliza a0;


pad = zeros (ord,1);
yp = [pad; x(:)];  %Salida alargada con ceros
up = [pad; x(:)];  %Entrada alargada con ceros
for i = 1:length(x)
    Mac1(i)=sum(b(:).*up(i:i+ord));
    Mac2(i)=sum(a(:).*yp(i:i+ord-1));
    yp(i+ord) = Mac1(i)-Mac2(i);
end

y = yp(ord+1:end); % Naive implementation


%% Plot
figure;
subplot(2,1,1)
plot(n,x,'LineWidth',2)
title('Input')
grid

subplot(2,1,2)
plot(n,y,'LineWidth',2)
title('Output')
grid

% subplot(3,1,3)
% plot(n,y)
% xlabel('Muestras')
% grid


%fvtool(Hd2)
%% Save data
%Conver data a Binary Q4.18
decimal_bits=18;

x_bin =zeros(length(x),22);
fileID = fopen('Input_bin.mem','w+');
for i=1:length(x)
if (x(i)>=0)
    b=round(x(i)*2^decimal_bits);
else
    b=round((2^4+x(i))*2^decimal_bits);
end

g=dec2bin(b);
binStr=zeros(1,22);
if length(g)<22
    binStr(1,23-length(g):end) = str2double(regexp(g,'\d','match'));
else
    binStr(1,:) =str2double(regexp(g,'\d','match'));
end
A=num2str(binStr(1,:));
A= A(~isspace(A));
fprintf(fileID,'%c',A);
fprintf(fileID,'\n');
end



fclose(fileID);


%% Read C Data
fileID = fopen('Output.bin');
C_answer = fread(fileID,'float');
C_answer = C_answer';
fclose(fileID);
%%

