# MATLAB Kullanımına Giriş

MATLAB, sayısal hesaplama, veri analizi ve görselleştirme için kullanılan bir programlama ortamıdır. Matrislerle çalışmayı kolaylaştıran yapısı, görüntü işleme uygulamaları için uygun bir temel sağlar.

Bu bölümde MATLAB ortamı, değişkenler, matrisler, koşullar ve döngüler kısa örneklerle ele alınmaktadır. **Örnekler için ek bir araç kutusu veya görüntü dosyası gerekmez.**

## 1. MATLAB Çalışma Ortamı

| Bölüm | Kullanım amacı |
|---|---|
| **Command Window** | Komutları doğrudan çalıştırma |
| **Editor** | Kod dosyaları oluşturma ve düzenleme |
| **Workspace** | Bellekteki değişkenleri inceleme |
| **Current Folder** | Çalışma klasöründeki dosyalara erişme |

İlk komut, Command Window’a yazılarak çalıştırılabilir:

```matlab
5 + 3
```

**Çıktı:**

```text
ans =

     8
```

Sonuç bir değişkene atanmadığında MATLAB, `ans` değişkenini kullanır.

## 2. Script Dosyası Oluşturma

Script, MATLAB komutlarının sırayla yazıldığı `.m` uzantılı dosyadır.

1. **New Script** seçeneğiyle yeni dosya oluşturulur.
2. Komutlar Editor alanına yazılır.
3. Dosya `ilk_uygulama.m` adıyla kaydedilir.
4. **Run** düğmesiyle çalıştırılır.

```matlab
a = 10;
b = 20;

toplam = a + b;

disp(toplam)
```

**Çıktı:** `30`

Dosya adlarında boşluk yerine alt çizgi kullanılabilir. `sum.m` veya `size.m` gibi yerleşik fonksiyon adlarının dosya adı olarak kullanılması önlenmelidir.

## 3. Değişken Tanımlama

Değişkenler, verileri saklamak için kullanılır.

```matlab
genislik = 640;
yukseklik = 480;

pikselSayisi = genislik * yukseklik;
```

Bir değişkenin değeri sonradan değiştirilebilir:

```matlab
genislik = 800;
```

**Değişken adlandırma kuralları:**

- Harfle başlamalıdır.
- Harf, rakam ve alt çizgi içerebilir.
- Boşluk içeremez.
- Büyük ve küçük harfe duyarlıdır.

```matlab
piksel = 100;
Piksel = 200;
```

Bu örnekte `piksel` ve `Piksel` iki farklı değişkendir.

## 4. Noktalı Virgül ve Açıklama Satırları

Satır sonunda `;` kullanılması, sonucun otomatik yazdırılmasını engeller.

```matlab
a = 10;   % Değer atanır, ekrana yazdırılmaz.
b = 20    % Değer atanır ve ekrana yazdırılır.
```

`%` işaretinden sonraki bölüm açıklamadır:

```matlab
% Toplam piksel sayısını hesapla.
pikselSayisi = 640 * 480;
```

Kodları bölümlere ayırmak için `%%` kullanılabilir:

```matlab
%% Değişkenler
a = 10;
b = 20;

%% Hesaplama
toplam = a + b;
```

## 5. Ekrana Bilgi Yazdırma

### `disp` kullanımı

```matlab
sonuc = 150;

disp('Hesaplanan değer:')
disp(sonuc)
```

### `fprintf` kullanımı

```matlab
genislik = 640;
ortalama = 124.256;

fprintf('Genişlik: %d piksel\n', genislik);
fprintf('Ortalama: %.2f\n', ortalama);
```

**Çıktı:**

```text
Genişlik: 640 piksel
Ortalama: 124.26
```

| Gösterim | Anlamı |
|---|---|
| `%d` | Tam sayı |
| `%.2f` | Ondalık noktadan sonra iki basamak |
| `\n` | Yeni satır |

**Not:** MATLAB kodunda ondalık ayırıcı olarak nokta kullanılır: `3.14`.

## 6. Temel Matematiksel İşlemler

```matlab
a = 12;
b = 4;

toplam = a + b;    % 16
fark = a - b;      % 8
carpim = a * b;    % 48
bolum = a / b;     % 3
kuvvet = b ^ 2;    % 16
```

Parantezler işlem sırasını belirlemek için kullanılır:

```matlab
ortalama = (a + b) / 2;
```

Sık kullanılan matematiksel fonksiyonlar:

```matlab
abs(-8)       % Mutlak değer: 8
sqrt(25)      % Karekök: 5
round(3.7)    % En yakın tam sayı: 4
floor(3.7)    % Aşağı yuvarlama: 3
ceil(3.2)     % Yukarı yuvarlama: 4
```

## 7. Vektör Oluşturma

Vektör, tek satır veya tek sütundan oluşan veri dizisidir.

```matlab
satirVektoru = [10 20 30 40];

sutunVektoru = [10;
               20;
               30;
               40];
```

Belirli aralıklarla değer oluşturma:

```matlab
A = 1:5;       % [1 2 3 4 5]
B = 0:2:10;    % [0 2 4 6 8 10]
C = 5:-1:1;    % [5 4 3 2 1]
```

Genel yapı:

```matlab
baslangic:adim:bitis
```

## 8. Matris Oluşturma

Matris, satır ve sütunlardan oluşan sayı tablosudur.

```matlab
A = [10 20 30;
     40 50 60;
     70 80 90];
```

- Boşluklar veya virgüller sütunları ayırır.
- Köşeli parantez içindeki noktalı virgüller yeni satır oluşturur.
- Bu örnekte matrisin boyutu **3 × 3**’tür.

**Görüntü işlemeyle ilişkisi:** Gri seviyeli bir görüntünün piksel değerleri, iki boyutlu bir matriste tutulabilir.

## 9. Matris Elemanlarına Erişme

MATLAB’da indisler **1’den başlar**. Elemanlara **satır, sütun** sırasıyla erişilir.

```matlab
A = [10 20 30;
     40 50 60;
     70 80 90];

deger = A(2, 3);

disp(deger)   % 60
```

Bir elemanı değiştirme:

```matlab
A(2, 3) = 100;
```

Bir satır veya sütunu seçme:

```matlab
ikinciSatir = A(2, :);   % İkinci satır
ilkSutun = A(:, 1);      % Birinci sütun
sonSatir = A(end, :);    % Son satır
```

Belirli bir bölgeyi seçme:

```matlab
bolge = A(1:2, 2:3);
```

## 10. Boyut ve Eleman Sayısı

```matlab
A = [10 20 30;
     40 50 60];

[satirSayisi, sutunSayisi] = size(A);

fprintf('Satır sayısı: %d\n', satirSayisi);
fprintf('Sütun sayısı: %d\n', sutunSayisi);
fprintf('Eleman sayısı: %d\n', numel(A));
```

**Çıktı:**

```text
Satır sayısı: 2
Sütun sayısı: 3
Eleman sayısı: 6
```

| Fonksiyon | Görevi |
|---|---|
| `size(A)` | Boyutları verir. |
| `size(A,1)` | Satır sayısını verir. |
| `size(A,2)` | Sütun sayısını verir. |
| `numel(A)` | Toplam eleman sayısını verir. |
| `length(A)` | En büyük boyutun uzunluğunu verir. |

## 11. Hazır Matrisler Oluşturma

```matlab
A = zeros(3, 4);   % Sıfırlardan oluşan matris
B = ones(3, 4);    % Birlerden oluşan matris
C = rand(3, 4);    % 0–1 aralığında rastgele değerler
D = false(3, 4);   % Mantıksal false değerleri
```

Örneğin bütün elemanları 100 olan bir matris:

```matlab
I = 100 * ones(3, 4);
```

Bu yapılar, görüntü işleme uygulamalarında başlangıç görüntüsü veya sonuç matrisi oluşturmak için kullanılabilir.

## 12. Eleman Bazlı İşlemler

Matrislerin karşılıklı elemanlarına ayrı ayrı işlem uygulamak için noktalı işleçler kullanılır.

```matlab
A = [1 2;
     3 4];

B = [2 2;
     2 2];

C = A .* B;
D = A ./ B;
E = A .^ 2;
```

`C` matrisinin sonucu:

```text
2   4
6   8
```

| İşleç | Görevi |
|---|---|
| `*` | Matris çarpımı |
| `.*` | Eleman bazlı çarpma |
| `./` | Eleman bazlı bölme |
| `.^` | Eleman bazlı üs alma |

**Örnek:** `A .^ 2`, her elemanın karesini ayrı ayrı hesaplar.

## 13. Koşullu İşlemler

`if–else`, bir koşula göre farklı işlemler gerçekleştirir.

```matlab
deger = 150;

if deger >= 128
    disp('Değer 128 veya üzerindedir.');
else
    disp('Değer 128 altındadır.');
end
```

Birden fazla durum için `elseif` kullanılır:

```matlab
deger = 150;

if deger < 85
    disp('Düşük değer');
elseif deger < 170
    disp('Orta değer');
else
    disp('Yüksek değer');
end
```

### Karşılaştırma işleçleri

| İşleç | Anlamı |
|---|---|
| `==` | Eşit |
| `~=` | Eşit değil |
| `>` | Büyük |
| `<` | Küçük |
| `>=` | Büyük veya eşit |
| `<=` | Küçük veya eşit |

**Dikkat:** `=` değer atar, `==` eşitliği kontrol eder.

## 14. Mantıksal İşlemler

Birden fazla koşul birleştirilebilir:

```matlab
deger = 150;

if deger >= 100 && deger <= 200
    disp('Değer 100–200 aralığındadır.');
end
```

- `&&`: İki koşul da doğru olmalıdır.
- `||`: Koşullardan en az biri doğru olmalıdır.
- `~`: Mantıksal sonucu tersine çevirir.

Dizilerde eleman bazlı karşılaştırma için `&` ve `|` kullanılır:

```matlab
A = [50 120 180 240];

maske = (A >= 100) & (A <= 200);

disp(maske)
```

**Çıktı:**

```text
0   1   1   0
```

## 15. `for` Döngüsü

`for`, bir değer dizisi üzerinde işlemleri tekrarlar.

```matlab
for i = 1:5
    fprintf('Adım: %d\n', i);
end
```

İkişer artırarak ilerleme:

```matlab
for i = 2:2:10
    disp(i)
end
```

Döngüyle toplam hesaplama:

```matlab
toplam = 0;

for i = 1:5
    toplam = toplam + i;
end

disp(toplam)   % 15
```

## 16. `while` Döngüsü

`while`, bir koşul doğru olduğu sürece işlemi tekrarlar.

```matlab
sayac = 1;

while sayac <= 5
    disp(sayac)
    sayac = sayac + 1;
end
```

Bu örnekte:

1. Koşul kontrol edilir.
2. Sayaç ekrana yazdırılır.
3. Sayaç bir artırılır.
4. Koşul yeniden kontrol edilir.

**Dikkat:** Sayaç güncellenmezse döngü sonsuza kadar devam edebilir. Çalışan işlemi durdurmak için **Ctrl+C** kullanılabilir.

## 17. İç İçe Döngüler

Bir matrisin bütün elemanlarını dolaşmak için iç içe döngüler kullanılabilir.

```matlab
A = [10 20 30;
     40 50 60];

for satir = 1:size(A, 1)
    for sutun = 1:size(A, 2)

        fprintf('A(%d,%d) = %d\n', ...
            satir, sutun, A(satir, sutun));

    end
end
```

Dış döngü satırları, iç döngü sütunları dolaşır.

**Görüntü işlemeyle ilişkisi:** Her pikseli tek tek incelemek ve değiştirmek için aynı yapı kullanılabilir.

## 18. Veri Türleri

```matlab
a = 100;
b = uint8(100);
c = true;

disp(class(a))   % double
disp(class(b))   % uint8
disp(class(c))   % logical
```

| Tür | Özellik |
|---|---|
| `double` | Ondalıklı hesaplamalarda kullanılır. |
| `uint8` | 0–255 aralığında tam sayıları saklar. |
| `uint16` | 0–65535 aralığında tam sayıları saklar. |
| `logical` | `true` ve `false` değerlerini saklar. |

Tür dönüşümü:

```matlab
A = uint8([0 100 255]);

B = double(A);
```

`double(A)` değerleri değiştirmeden veri türünü dönüştürür.

## 19. Temel İstatistiksel İşlemler

```matlab
degerler = [50 100 150 200];

toplam = sum(degerler);
ortalama = mean(degerler);
enKucuk = min(degerler);
enBuyuk = max(degerler);
```

Bir matrisin bütün elemanları üzerinde işlem yapmak için `A(:)` kullanılabilir:

```matlab
A = [10 20 30;
     40 50 60];

ortalama = mean(A(:));

disp(ortalama)   % 35
```

Koşulu sağlayan elemanları sayma:

```matlab
adet = nnz(A >= 40);

disp(adet)   % 3
```

## 20. İlk Bütünleşik Uygulama

Aşağıdaki örnekte küçük bir matrisin değerleri artırılır ve belirli bir sınırda tutulur.

```matlab
% Örnek piksel değerleri
I = [50  100 150;
     200 230 250];

% Sonuç matrisi
sonuc = zeros(size(I));

% Her elemana 30 ekle.
for satir = 1:size(I, 1)
    for sutun = 1:size(I, 2)

        yeniDeger = I(satir, sutun) + 30;

        if yeniDeger > 255
            yeniDeger = 255;
        end

        sonuc(satir, sutun) = yeniDeger;

    end
end

disp('Başlangıç matrisi:')
disp(I)

disp('Sonuç matrisi:')
disp(sonuc)
```

**Sonuç:**

```text
    80   130   180
   230   255   255
```

Bu uygulamada değişkenler, matrisler, indisleme, döngüler ve koşullar birlikte kullanılmıştır.

## 21. Çalışma Alanını Yönetme

| Komut | Görevi |
|---|---|
| `clc` | Komut Penceresi’ndeki yazıları temizler. |
| `clearvars` | Çalışma alanındaki değişkenleri siler. |
| `close all` | Açık grafik pencerelerini kapatır. |
| `whos` | Değişkenlerin özelliklerini gösterir. |
| `pwd` | Çalışma klasörünü gösterir. |
| `dir` | Klasördeki dosyaları listeler. |
| `help size` | `size` için kısa yardım gösterir. |
| `doc size` | `size` dokümantasyonunu açar. |

**Önemli:** `clc` değişkenleri silmez. `clearvars` ise değişkenleri siler.

## 22. Başlangıç Alıştırmaları

1. 800 × 600 boyutundaki bir görüntünün toplam piksel sayısını hesaplayın.
2. 3 × 3 boyutunda bir matris oluşturup merkezindeki değeri değiştirin.
3. `for` döngüsüyle 1’den 10’a kadar sayıların toplamını bulun.
4. Bir matriste 128 ve üzerindeki değerleri sayın.
5. Bir matrise 50 ekleyip 255’i aşan değerleri 255’e sınırlandırın.
6. Aynı işlemi hem döngüyle hem de toplu matris işlemiyle gerçekleştirin.
