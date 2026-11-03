%% Değerlendirme çözümü
A = [10 20 30;40 50 60;70 80 90];
disp(A(3,2)) % 80
disp(A(:,2)) % [20;50;80]
disp(size(A)) % [3 3]
disp(numel(A)) % 9
disp(A*A) % Matris çarpımı: [3000 3600 4200;6600 8100 9600;10200 12600 15000]
disp(A.*A) % Eleman bazlı çarpma: [100 400 900;1600 2500 3600;4900 6400 8100]
toplam = 0;
for i = 1:size(A,1)
    for j = 1:size(A,2)
        if A(i,j)>50
            toplam = toplam+A(i,j);
        end
    end
end
disp(toplam) % 300
