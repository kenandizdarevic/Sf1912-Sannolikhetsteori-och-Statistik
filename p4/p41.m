data = load("birth.dat");

% Histogram för födelsevikt i gram
birth_weight = data(:, 3);
%subplot(2, 2, 1);
hist_density(birth_weight, 100);
title('Barnets födelsevikt');
xlabel('Gram');
ylabel('Antal');

% Histogram för moderns ålder i år
mother_age = data(:, 4);
%subplot(2, 2, 2);
hist_density(mother_age, 30);
title('Moderns ålder');
xlabel('År');
ylabel('Antal');

% Histogram för moderns längd i cm
mother_length = data(:, 16);
mother_age = data(:, 4);
%subplot(2, 2, 3);
hist_density(mother_length, 50);
title('Moderns längd');
xlabel('Cm');
ylabel('Antal');

% Histogram för moderns vikt kg
mother_weight = data(:, 15);
%subplot(2, 2, 4);
hist_density(mother_weight, 100);
title('Moderns vikt');
xlabel('Kg');
ylabel('Antal');
