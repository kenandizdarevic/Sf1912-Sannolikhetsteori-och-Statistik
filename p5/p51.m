data = load('data\birth.dat');

birth_weight = data(:, 3);
mother_age = data(:, 4);
mother_length = data(:, 16);
mother_weight = data(:, 15);

subplot(4, 1, 4);
qqplot(birth_weight);
title('Barnets födelsevikt');
ylabel('');
xlabel('');

subplot(4, 1, 3);
qqplot(mother_age);
title('Moderns ålder');
ylabel('');
xlabel('');

subplot(4, 1, 2);
qqplot(mother_length);
title('Moderns längd');
ylabel('');
xlabel('');

subplot(4, 1, 1);
qqplot(mother_weight);
title('Moderns vikt');
ylabel('');
xlabel('');
