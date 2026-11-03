# 12. Matris ve Eleman Bazlı İşlemler

* matris çarpımıdır. .*, ./ ve .^ karşılıklı elemanlar üzerinde işlem yapar.

## Örnek kod

```matlab
A = [1 2;3 4];
B = [5 6;7 8];
toplam = A+B;
fark = A-B;
matrisCarpimi = A*B; % [19 22;43 50]
elemanCarpimi = A.*B; % [5 12;21 32]
elemanBolumu = A./B;
kareler = A.^2; % [1 4;9 16]
disp(matrisCarpimi)
disp(elemanCarpimi)
```

## Uygulama

A^2 ve A.^2 sonuçlarını karşılaştırınız.

[← Ana sayfa](../../README.md)
