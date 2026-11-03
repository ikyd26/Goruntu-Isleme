# Görüntü İşleme için MATLAB Temelleri

**Dr. Öğr. Üyesi İsmail KAYADİBİ**  
Afyon Kocatepe Üniversitesi — Yönetim Bilişim Sistemleri Bölümü

Bu öğretici, MATLAB temellerini değişkenlerden iç içe döngülere kadar adım adım açıklar. Örnekleri sırayla uygulayarak görüntü işlemede kullanılacak matris işlemlerinin temelleri öğrenilir.

## Nasıl çalışılır?

MATLAB’da **New Script** ile yeni bir dosya oluşturunuz. Her bölümdeki kodu bu dosyaya kopyalayıp çalıştırınız. Sonuçları **Command Window**, değişkenleri **Workspace** üzerinden inceleyiniz. Ardından bölümün uygulama sorusunu çözünüz. Bölümleri ayrı ayrı çalıştırınız; her örnekte kullanılan değişkenler o bölümde tanımlanır.

Bu içerikteki örnekler için Image Processing Toolbox gerekmez.



---

## 01. Çalışma Ortamı

Command Window komutları çalıştırır; Workspace değişkenleri, Current Folder dosyaları gösterir. Editor üzerinde bir script oluşturup kaydediniz.

### Örnek kod

```matlab
clc; % Komut penceresini temizler; değişkenleri silmez
clear; % Workspace değişkenlerini siler
close all; % Açık grafik pencerelerini kapatır
```

### Uygulama

a ve b değişkenleri oluşturup Workspace üzerinde inceleyiniz.

---

## 02. Kod Yazımında Temel İşaretler

Yorumlar % ile, bölümler %% ile başlar. Noktalı virgül yalnızca komut çıktısını gizler.

### Örnek kod

```matlab
%% İlk hesaplama
a = 10; % Değer atanır, çıktı gizlenir
b = 20 % Değer atanır, çıktı gösterilir
toplam = a + b; % Toplam 30 olur
disp(toplam) % Sonucu gösterir
```

### Uygulama

b satırına noktalı virgül ekleyip çıktıdaki farkı inceleyiniz.

---

## 03. Değişkenler ve Çıktı Alma

Değişken adları büyük/küçük harfe duyarlıdır. who adları, whos boyut ve tür gibi bilgileri gösterir.

### Örnek kod

```matlab
a = 10;
b = 20;
a % Ad ve değer gösterilir
disp(b) % Yalnızca değer gösterilir
who
whos
a = 25; % Önceki değer değiştirilir
```

### Uygulama

a ve A adında iki değişken oluşturunuz.

---

## 04. Temel Aritmetik İşlemler

Skaler sayılar üzerinde toplama, çıkarma, çarpma, bölme ve kuvvet işlemleri uygulanır.

### Örnek kod

```matlab
a = 10; b = 20;
toplam = a+b; % 30
fark = a-b; % -10
carpim = a*b; % 200
bolum = a/b; % 0.5
kuvvet = a^2; % 100
ortalama = (a+b)/2; % 15
kok = sqrt(25); % 5
disp([toplam fark carpim bolum kuvvet ortalama kok])
```

### Uygulama

Kenarları 12 ve 8 olan dikdörtgenin alanını ve çevresini bulunuz. Beklenen: 96 ve 40.

---

## 05. Vektör Oluşturma

başlangıç:adım:bitiş gösterimi bir sayı dizisi üretir. Bitiş değeri ancak adımlarla ulaşılabiliyorsa dâhildir.

### Örnek kod

```matlab
A = [10 20 30 40]; % Satır vektörü
B = [10;20;30;40]; % Sütun vektörü
C = 1:5; % [1 2 3 4 5]
D = 0:2:10; % [0 2 4 6 8 10]
E = 10:-2:0; % [10 8 6 4 2 0]
F = 1:5:100; % Son değer 96
disp(F)
```

### Uygulama

20’den 0’a dörder azalan bir vektör oluşturunuz.

---

## 06. Matris Oluşturma

Köşeli parantezler matris oluşturur. Boşluk veya virgül sütunları, noktalı virgül satırları ayırır. Gri seviyeli görüntü de iki boyutlu bir matris olarak düşünülebilir.

### Örnek kod

```matlab
A = [10 20 30;
     40 50 60;
     70 80 90;
     100 110 120;
     120 130 140]; % 5 satır, 3 sütun
disp(A)
```

### Uygulama

İki satır ve dört sütundan oluşan bir matris oluşturunuz.

---

## 07. Matris Elemanlarına Erişim

İndisler 1’den başlar. A(satır,sütun) ile tek elemana erişilir.

### Örnek kod

```matlab
A = [10 20 30;40 50 60;70 80 90];
disp(A(1,1)) % 10
disp(A(2,3)) % 60
disp(A(3,2)) % 80
```

### Uygulama

A(2,1) değerini bulunuz. Beklenen: 40.

---

## 08. Satır, Sütun ve Bölge Seçme

: ilgili boyuttaki tüm indisleri, end son indisi belirtir. Görüntüden bölge seçme de aynı mantığa dayanır.

### Örnek kod

```matlab
A = [10 20 30;40 50 60;70 80 90];
ikinciSatir = A(2,:); % [40 50 60]
ilkSutun = A(:,1); % [10;40;70]
sonSatir = A(end,:);
sonSutun = A(:,end);
bolge = A(1:2,2:3); % [20 30;50 60]
disp(bolge)
```

### Uygulama

Son iki satırın ilk iki sütununu seçiniz.

---

## 09. Matris Elemanlarını Değiştirme

Atamalar sırayla uygulanır. Sonraki atama önceki değerin üzerine yazabilir.

### Örnek kod

```matlab
A = [10 20 30;40 50 60;70 80 90];
A(2,3) = 500; % Tek eleman
A(:,2) = 25; % Tüm ikinci sütun
A(2,:) = 10; % Tüm ikinci satır
disp(A) % [10 25 30;10 10 10;70 25 90]
```

### Uygulama

İlk satırdaki tüm değerleri sıfır yapınız.

---

## 10. Matris Boyutları ve Eleman Sayısı

size boyutları; numel toplam eleman sayısını; length en büyük boyut uzunluğunu verir.

### Örnek kod

```matlab
A = [10 20 30;40 50 60;70 80 90;100 110 120;120 130 140];
[satir,sutun] = size(A); % 5 ve 3
disp(size(A)) % [5 3]
disp(size(A,1)) % 5
disp(size(A,2)) % 3
disp(numel(A)) % 15
disp(length(A)) % 5
```

### Uygulama

4×6 boyutlu matris için size, numel ve length sonuçlarını tahmin ediniz.

---

## 11. Hazır Matris Fonksiyonları

zeros sıfırlar, ones birler, eye birim matris, rand rastgele sayılar oluşturur.

### Örnek kod

```matlab
A = zeros(3,3);
B = ones(3,3);
C = 20*ones(3,3);
D = eye(3);
E = rand(3,3); % 0 ile 1 arasında rastgele değerler
F = ones(3,3)+40; % Tüm elemanlar 41
G = 40*ones(3,3); % Tüm elemanlar 40
disp(C)
```

### Uygulama

Tüm elemanları 128 olan 5×5 matris oluşturunuz.

---

## 12. Matris ve Eleman Bazlı İşlemler

* matris çarpımıdır. .*, ./ ve .^ karşılıklı elemanlar üzerinde işlem yapar.

### Örnek kod

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

### Uygulama

A^2 ve A.^2 sonuçlarını karşılaştırınız.

---

## 13. Karşılaştırma ve Mantıksal Operatörler

= atama; == eşitlik; ~= eşit değil karşılaştırmasıdır. && ve || kısa devreli skaler mantık, & ve | eleman bazlı mantık işlemleridir.

### Örnek kod

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

### Uygulama

30 ile 70 arasındaki değerleri seçen mantıksal koşulu yazınız.

---

## 14. Koşullu İşlemler

Koşullar yukarıdan aşağıya kontrol edilir; ilk doğru koşulun bloğu çalışır. Not: Not aralıkları yalnızca programlama örneğidir.

### Örnek kod

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

### Uygulama

puan değerini 55, 85 ve 95 yaparak çıktıları inceleyiniz.

---

## 15. for Döngüsü

Döngü değişkeni belirtilen vektörün değerlerini sırayla alır.

### Örnek kod

```matlab
for i = 1:5
    disp(i)
end
for i = 2:2:10
    disp(i) % 2 4 6 8 10
end
for i = 1:5:100
    disp(i) % Son değer 96, toplam 20 adım
end
```

### Uygulama

1’den 99’a kadar tek sayıları yazdırınız.

---

## 16. Döngü ile Toplam Hesaplama

Biriktirme değişkeni döngüden önce başlatılır. Her adımda yeni değer mevcut toplama eklenir.

### Örnek kod

```matlab
toplam = 0;
for i = 1:10
    toplam = toplam+i;
end
disp(toplam) % 55
```

### Uygulama

1’den 100’e kadar çift sayıların toplamını bulunuz. Beklenen: 2550.

---

## 17. İç İçe Döngülerle Matris İşleme

Dış döngü satırları, iç döngü sütunları gezer. Bu yapı iki boyutlu görüntü piksellerine uygulanabilir.

### Örnek kod

```matlab
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
```

### Uygulama

Yalnızca 50’den büyük elemanları toplayınız. Beklenen: 300.

---

## 18. Değerlendirme ve Uygulama

```matlab
A = [10 20 30;40 50 60;70 80 90];
```

1. `A(3,2)` hangi değeri verir?
2. `A(:,2)` hangi elemanları seçer?
3. `size(A)` ile `numel(A)` nasıl farklılaşır?
4. `A*A` ile `A.*A` arasındaki fark nedir?
5. İç içe döngüyle 50’den büyük elemanların toplamını hesaplayınız.

Önce sonuçları tahmin ediniz, ardından MATLAB ile kontrol ediniz.

---

### Çözümler

Soruları tamamladıktan sonra aşağıdaki kodlarla sonuçlarınızı karşılaştırınız.

```matlab
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
```

---

## Sonraki adım

Matrislere erişme, bölge seçme ve döngülerle işlem yapma becerileri, sonraki derste görüntü piksellerine uygulanacaktır.
