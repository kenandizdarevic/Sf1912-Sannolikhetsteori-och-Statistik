data = load("birth.dat");

birth_weight = data(:,3);
mother_age = data(:, 4);
mother_length = data(:, 16);

subplot(3, 1, 3);
qqplot(birth_weight);
title('Barnets födelsevikt')
ylabel('')
xlabel('')

subplot(3, 1, 2);
qqplot(mother_age);
title('Moderns ålder')
ylabel('')
xlabel('')

subplot(3, 1, 1);
qqplot(mother_length);
title('Moderns längd')
ylabel('')
xlabel('')
