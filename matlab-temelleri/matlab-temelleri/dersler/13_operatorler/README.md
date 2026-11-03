# 13. Karşılaştırma ve Mantıksal Operatörler

= atama; == eşitlik; ~= eşit değil karşılaştırmasıdır. && ve || kısa devreli skaler mantık, & ve | eleman bazlı mantık işlemleridir.

## Örnek kod

```matlab
a = 10; b = 20;
disp(a>b) % false
disp(a<b) % true
disp(a>=b)
disp(a<=b)
disp(a==b) % false
disp(a~=b) % true
disp(a<20 && b>10) % true
disp(a>20 || b>10) % true
disp(~(a<b)) % false
A = [10 50 90];
maske = (A>20) & (A<80); % [false true false]
disp(maske)
```

## Uygulama

30 ile 70 arasındaki değerleri seçen mantıksal koşulu yazınız.

[← Ana sayfa](../../README.md)
