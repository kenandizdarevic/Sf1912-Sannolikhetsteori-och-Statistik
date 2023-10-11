data = load("data\moore.dat");

trans_per_area = data(:, 1);
year = data(:, 2);

w = log(year);

X = [ones(length(trans_per_area), 1), trans_per_area];

[beta_hat, re, ~, ~, stats] = regress(w, X);

% Plottar residualerna.
res = w - X*beta_hat;

%subplot(2,1,1), normplot(res)
%ylabel('Sannolikhet')
%title('Normalitetsplott')
%xlabel('Teoretiska kvantiler')

subplot(2,1,2), hist(res)
title('Histogram över resiudaler')
%ylim([0, 65]);

% Beräkna R^2
mean_w = mean(w);

% Beräkna SST
SST = sum((w - mean(w)).^2);

% SSR finns i stats(1)
R_squared = 1 - (stats(1) / SST); 
fprintf('R-kvadrat: %.4f\n', R_squared);

R2 = stats(1);

% Förutsägelse år 2025
year_2025 = 2025;
X_2025 = [1, year_2025];
log_prediction_2025 = X_2025 * beta_hat;
prediction_2025 = exp(log_prediction_2025);
fprintf('Förutsedd mängd transistorer år 2025: %.2f\n', prediction_2025);

figure
plot(trans_per_area, w, 'b', trans_per_area, X*beta_hat, 'r', 'LineWidth', 2)
title("Moores Lag")
legend('Data', 'Linjär Regression', 'Location','north');
xlabel('År')
ylabel('Antal transistorer');
grid on;
