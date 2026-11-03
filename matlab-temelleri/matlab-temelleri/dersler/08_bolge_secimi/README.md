# 08. Satır, Sütun ve Bölge Seçme

: ilgili boyuttaki tüm indisleri, end son indisi belirtir. Görüntüden bölge seçme de aynı mantığa dayanır.

## Örnek kod

```matlab
A = [10 20 30;40 50 60;70 80 90];
ikinciSatir = A(2,:); % [40 50 60]
ilkSutun = A(:,1); % [10;40;70]
sonSatir = A(end,:);
sonSutun = A(:,end);
bolge = A(1:2,2:3); % [20 30;50 60]
disp(bolge)
```

## Uygulama

Son iki satırın ilk iki sütununu seçiniz.

[← Ana sayfa](../../README.md)
