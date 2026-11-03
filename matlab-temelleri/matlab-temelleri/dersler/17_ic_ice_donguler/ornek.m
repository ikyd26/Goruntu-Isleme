%% 17. İç İçe Döngülerle Matris İşleme
% Dış döngü satırları, iç döngü sütunları gezer. Bu yapı iki boyutlu görüntü piksellerine uygulanabilir.

A = [10 20 30;40 50 60;70 80 90];
toplam = 0;
for i = 1:size(A,1)
    for j = 1:size(A,2)
        disp(A(i,j)) % Geçerli eleman
        toplam = toplam+A(i,j);
    end
end
disp(toplam) % 450
toplam2 = sum(A(:)); % Aynı toplam; farklı sürümlerle uyumlu
disp(toplam2)
