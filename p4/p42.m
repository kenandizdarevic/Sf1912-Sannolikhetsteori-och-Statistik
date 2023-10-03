%% Problem 4: Fordelningar av givna data
load birth.dat

% Icke-rökande mödrar
x = birth(birth(:, 20) < 3, 3);
% Rökande mödrar
y = birth(birth(:, 20) == 3, 3);

% Låddiagram för rökande och icke-rökande mödrar
subplot(2,2,1), boxplot(x),
axis([0 2 500 5000])
title('Icke-rökande mödrar');
subplot(2,2,2), boxplot(y),
axis([0 2 500 5000])
title('Rökande mödrar');

subplot(2,2,3:4), ksdensity(x),
hold on
[fy, ty] = ksdensity(y);
plot(ty, fy, 'r')
title('Barnets vikt');
legend('Icke-rökande', 'Rökande');
hold off