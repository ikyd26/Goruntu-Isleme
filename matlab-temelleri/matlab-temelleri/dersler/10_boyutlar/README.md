# 10. Matris Boyutları ve Eleman Sayısı

size boyutları; numel toplam eleman sayısını; length en büyük boyut uzunluğunu verir.

## Örnek kod

```matlab
A = [10 20 30;40 50 60;70 80 90;100 110 120;120 130 140];
[satir,sutun] = size(A); % 5 ve 3
disp(size(A)) % [5 3]
disp(size(A,1)) % 5
disp(size(A,2)) % 3
disp(numel(A)) % 15
disp(length(A)) % 5
```

## Uygulama

4×6 boyutlu matris için size, numel ve length sonuçlarını tahmin ediniz.

[← Ana sayfa](../../README.md)
