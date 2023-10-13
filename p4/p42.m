%% Problem 4: Fordelningar av givna data
load data\birth.dat

% Etergymnasial utbildning
x = birth(birth(:, 17) == 1, 3);
% Gymnasial utbildning
y = birth(birth(:, 24) == 2, 3);

% Låddiagram för rökande och icke-rökande mödrar
subplot(2,2,1), boxplot(x),
axis([0 2 500 5000])
title('Eftergymnasial utbildning');
subplot(2,2,2), boxplot(y),
axis([0 2 500 5000])
title('Gymnasial utbildning');

subplot(2,2,3:4), ksdensity(x),
hold on
[fy, ty] = ksdensity(y);
plot(ty, fy, 'r')
title('Barnets vikt');
legend('Eftergymnasial utbildning', 'Gymnasial utbildning');
hold off