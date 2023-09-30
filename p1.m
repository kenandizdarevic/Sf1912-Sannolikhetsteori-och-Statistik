%% Problem 1: Simulering av konfidensintervall
% Parametrar:
n = 100; %Antal matningar
mu = 2; %Vantevardet
sigma = 1; %Standardavvikelsen
alpha = 0.05;
%Simulerar n observationer for varje intervall
x = normrnd(mu, sigma, 100, n); % 100 x n matrix of values
%Skattar mu med medelvardet
xbar = mean(x); %vektor med 100 medelvarden.
%Beraknar de undre och ovre granserna
undre = xbar - norminv(1-alpha/2)*sigma/sqrt(n);
ovre = xbar + norminv(1-alpha/2)*sigma/sqrt(n);

%Ritar upp alla intervall
figure(1)
hold on
for k = 1:100
    if ovre(k) < mu % Rodmarkerar intervall som missar mu
        plot([undre(k) ovre(k)], [k k], 'r')
    elseif undre(k) > mu
        plot([undre(k) ovre(k)], [k k], 'r')
    else
        plot([undre(k) ovre(k)], [k k], 'b')
    end
end
%b1 och b2 ar bara till for att figuren ska se snygg ut.
b1 = min(xbar - norminv(1 - alpha/2)*sigma/sqrt(n));
b2 = max(xbar + norminv(1 - alpha/2)*sigma/sqrt(n));
axis([b1 b2 0 101]) %Tar bort outnyttjat utrymme i figuren
%Ritar ut det sanna vardet
plot([mu mu],[0 101],'g')
hold off
