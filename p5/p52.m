data = load("birth.dat");

birth_weight = data(:,3);
mother_age = data(:, 4);
mother_length = data(:, 16);

significance_level = 0.05; 
mother_length_nd = jbtest(mother_length, significance_level);
mother_age_nd = jbtest(mother_age, significance_level);
birth_weight_nd = jbtest(mother_age, significance_level);

fprintf('Moderns vikt är normalfördelad: %s\n', ...
        tfToString(mother_length_nd == 0));
fprintf('Moderns ålder är normalfördelad: %s\n', ...
        tfToString(mother_age_nd == 0));
fprintf('Barnets födelsevikt är normalfördelad: %s\n', ...
        tfToString(birth_weight_nd == 0));

% Hjälpfunktion för att konvertera till true/false till strängar.
function str = tfToString(tf)
    if tf
        str = 'sant.';
    else
        str = 'falskt.';
    end
end