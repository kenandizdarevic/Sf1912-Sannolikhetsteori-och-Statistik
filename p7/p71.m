data = load("data\birth.dat");

mother_length = data(:,16);
birth_weight = data(:,3);

X = [ones(length(mother_length), 1), mother_length];

[beta_hat, ~, res] = regress(birth_weight, X);

normplot(res)
ylabel('Sannolikhet')
title('Normalitetsplott')
xlabel('Teoretiska kvantiler')

%Plotta sambandet mellan mödrarnas längd och födelsevikten
scatter(mother_length, birth_weight, 'blue', 'DisplayName', 'Observationer');
hold on;

%Lägg till linjär regressionslinje
plot(mother_length, X * beta_hat, 'r', 'LineWidth', 2, 'DisplayName', 'Linjär Regression');

% Ange etiketter och titel för plotten
xlabel('Moderns Längd');
ylabel('Barnets födelsevikt');
title('Sambandet mellan moderns längd och barnets födelsevikt');

% Lägg till en legend för att identifiera observationer och regression
legend('Location', 'northwest');

% Håll grafen synlig
hold off;