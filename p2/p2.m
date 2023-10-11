%% Problem 2: Maximum likelihood/Minsta kvadrat
M = 1e4;
b = 4;
x = raylrnd(b, M, 1);
hist_density(x, 40)
hold on
my_est_ml = sqrt((1/n)*sum((x.^2)/2));
my_est_mk = mean(x)*sqrt(2/pi);
plot(my_est_ml, 0, 'r*')
plot(my_est_mk, 0, 'g*')
plot(b, 0, 'ro')
plot(0:0.1:16, raylpdf(0:0.1:16, my_est_mk), 'r')
hold off
