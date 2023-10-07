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
