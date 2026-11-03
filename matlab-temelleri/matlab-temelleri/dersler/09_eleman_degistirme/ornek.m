%% 09. Matris Elemanlarını Değiştirme
% Atamalar sırayla uygulanır. Sonraki atama önceki değerin üzerine yazabilir.

A = [10 20 30;40 50 60;70 80 90];
A(2,3) = 500; % Tek eleman
A(:,2) = 25; % Tüm ikinci sütun
A(2,:) = 10; % Tüm ikinci satır
disp(A) % [10 25 30;10 10 10;70 25 90]
