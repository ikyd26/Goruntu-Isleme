# 14. Koşullu İşlemler

Koşullar yukarıdan aşağıya kontrol edilir; ilk doğru koşulun bloğu çalışır. Not: Not aralıkları yalnızca programlama örneğidir.

## Örnek kod

```matlab
puan = 75;
if puan >= 90
    disp('AA')
elseif puan >= 80
    disp('BA')
elseif puan >= 70
    disp('BB') % Bu örnekte çalışır
elseif puan >= 60
    disp('CB')
else
    disp('FF')
end
```

## Uygulama

puan değerini 55, 85 ve 95 yaparak çıktıları inceleyiniz.

[← Ana sayfa](../../README.md)
