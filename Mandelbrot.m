close all;
clear all;
clc;

x = linspace(-2,0.5,1100);
y = linspace(-1.5,1.5,1100);
y = y';
n = length(x);
e = ones(n,1);

depth = 2^4;

z0 = x(e,:) + 1i*y(:,e);

z = zeros(n,n);
c = zeros(n,n);
a = zeros(n,n,depth);

for k = 1 : depth
    z = z.^2 + z0;
    a(:,:,k) = z;
    c(abs(z) < 2) = k;
end

image(c);
axis image;
colormap(flipud(jet(depth)));

break;
% To check the values of each iteration
figure(2);
hold on;
for k = 1 : n
    plot(abs(a(:,:,k)));
end


