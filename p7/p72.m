data = load("data\birth.dat");

mother_weight = data(:, 15);
mother_smoking = data(:,20) == 3;
mother_high_school = data(:,24) == 2;
birth_weight = data(:,3);

X = [ones(size(mother_weight)),mother_weight,mother_smoking,mother_high_school];

[beta_hat, confidence_interval, res] = regress(birth_weight, X, 0.05);

% Skriv ut resultaten
disp('Uppskattade koefficienter:');
disp(beta_hat);

disp('Konfidensintervall för koefficienter:');
disp(confidence_interval);

scatter(mother_weight, birth_weight, 'blue');
hold on; 

x_values = min(mother_weight):0.1:max(mother_weight);
y_values = beta_hat(1) + beta_hat(2) * x_values; 
plot(x_values, y_values, 'r', 'LineWidth', 2);

legend('Data', 'Regression', 'Location', 'Northwest');
title("Linjär Regression (med all data)")
xlabel("Data")
ylabel("Födelsevikt")
