load wave_data.mat
subplot(2,1,1), plot(y(1:end))
subplot(2,1,2), hist_density(y)

% Min egna skattning
sigma = 1;
n = 10000;
alpha = 0.05;
my_est = sqrt((1/n)*(sum(x.^2) / 2)); % ML-Skattning

% Konfidensintervall
lower_bound = my_est - norminv(1-alpha/2)*sigma/sqrt(n);
upper_bound = my_est + norminv(1-alpha/2)*sigma/sqrt(n);


hold on
plot(lower_bound, 0, 'g*')
plot(upper_bound, 0, 'r*')

plot(0:0.1:6, raylpdf(0:0.1:6, my_est), 'r')
hold off

