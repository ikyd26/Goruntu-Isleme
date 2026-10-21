GitHub deposu için kopyalayıp doğrudan `README.md` veya `Ders_01_Matlab_Temelleri.md` dosyası olarak kullanabileceğiniz, Markdown formatında yapılandırılmış ders içeriği:

---

# Bölüm 1: MATLAB Temelleri ve Çalışma Ortamı

Bu doküman, **Görüntü İşleme** dersine hazırlık amacıyla MATLAB ortamını tanımak, temel matris mantığını kavramak ve veri yapıları üzerinde işlem yapmak için hazırlanmıştır.

---

## 1. MATLAB Nedir?

**MATLAB** (*Matrix Laboratory*), özellikle matris temelli matematiksel hesaplamalar, veri analizi, algoritma geliştirme ve modelleme için tasarlanmış yüksek seviyeli bir programlama dilidir.

> **Görüntü İşlemede Neden MATLAB?**
> Dijital bir görüntü, temelde satır ve sütunlardan oluşan sayısal bir matristir. MATLAB'in tüm mimarisi vektör ve matris işlemleri üzerine kurulu olduğu için, döngülere (for/while) ihtiyaç duymadan milyonlarca piksel üzerinde eşzamanlı işlem yapmayı (vektörizasyon) son derece hızlı ve kolay hale getirir.

---

## 2. MATLAB Arayüzü ve Temel Pencereler

MATLAB açıldığında karşınıza çıkan ana pencereler:

* **Command Window (Komut Penceresi):** Komutların anlık olarak yazılıp çalıştırıldığı alandır.
* **Workspace (Çalışma Alanı):** Bellekte tanımlanmış olan tüm değişkenleri, boyutlarını (`Size`), sınıflarını/tiplerini (`Class`) ve değerlerini listeler.
* **Current Folder (Mevcut Klasör):** Üzerinde çalıştığınız dizini ve dosya hiyerarşisini gösterir.
* **Command History (Komut Geçmişi):** Daha önce çalıştırılan komutları listeler.
* **Editor (Kod Düzenleyici):** `.m` uzantılı betik (script) ve fonksiyon dosyalarının yazıldığı penceredir.

---

## 3. Temel Sözdizimi ve Çalışma Kuralları

* **Noktalı Virgül (`;`):** Satır sonuna konulduğunda komutun çıktısının Komut Penceresinde yazdırılmasını engeller (hesaplama arka planda yapılır). Büyük boyutlu görüntülerle çalışırken ekrana milyonlarca sayı dökülmemesi için **kritiktir**.
* **Yorum Satırı (`%`):** Kod içinde açıklama yazmak için kullanılır. Çoklu satır yorumları için `%{ ... %}` bloğu kullanılır.
* **Önemli Temel Komutlar:**
* `clc`: Komut penceresini temizler.
* `clear` / `clearvars`: Workspace'teki tüm değişkenleri bellekten siler.
* `close all`: Açık olan tüm figür/grafik pencerelerini kapatır.



---

## 4. Değişkenler, Vektörler ve Matrisler

MATLAB'de temel veri tipi **dizi/matristir**. Tek bir sayı dahi $1 \times 1$ boyutunda bir matris olarak kabul edilir.

```matlab
%% Değişken Tanımlama
x = 10;
y = 20;
toplam = x + y;

%% Vektör Oluşturma
satir_vektoru = [1, 2, 3, 4, 5];       % 1x5 Satır vektörü
sutun_vektoru = [1; 2; 3; 4; 5];       % 5x1 Sütun vektörü
aralik_vektoru = 0:2:10;              % 0'dan 10'a 2'şer artış: [0, 2, 4, 6, 8, 10]

%% Matris Oluşturma
% Satırlar boşluk/virgül ile, sütun geçişleri noktalı virgül (;) ile ayrılır.
A = [1, 2, 3; 
     4, 5, 6; 
     7, 8, 9];                        % 3x3 Matris

```

---

## 5. Matris İndeksleme (Indexing)

> **DİKKAT:** MATLAB'de indeksleme **1'den başlar** (C, Java veya Python'daki gibi 0'dan değil).

```matlab
A = [10, 20, 30; 
     40, 50, 60; 
     70, 80, 90];

% Tek bir elemana erişim: A(satir, sutun)
eleman = A(2, 3);        % 2. satır, 3. sütundaki değer -> 60

% Belirli bir satır veya sütunun tamamını seçme ( : operatörü )
ikinci_satir = A(2, :);  % [40, 50, 60]
ucuncu_sutun = A(:, 3);  % [30; 60; 90]

% Bir alt bloğu (ROI - Region of Interest) kesme
blok = A(1:2, 2:3);      % [20, 30; 50, 60]

```

---

## 6. Matris İşlemleri ve Nokta (`.`) Operatörü

Görüntü işlemede matris çarpımı yerine çoğu zaman piksellerin teker teker işlendiği **eleman bazlı (element-wise)** işlemler kullanılır.

| İşlem | Matris Seviyesi (Lineer Cebir) | Eleman Bazlı (Piksel Seviyesi) |
| --- | --- | --- |
| Çarpma | `A * B` | `A .* B` |
| Bölme | `A / B` | `A ./ B` |
| Üs Alma | `A ^ 2` | `A .^ 2` |

```matlab
M = [2, 4; 
     6, 8];

% Eleman bazlı işlemler
kare = M .^ 2;      % [4, 16; 36, 64]
yari = M ./ 2;      % [1, 2; 3, 4]

```

---

## 7. Görüntü İşleme İçin Sık Kullanılan Özel Fonksiyonlar

```matlab
% Matris Boyutunu Öğrenme
[satir, sutun] = size(A);

% Özel Matris Üreteçleri (Görüntü filtreleme ve maskelemede kullanılır)
sifir_matrisi = zeros(256, 256);  % 256x256 tamamen siyah görüntü simülasyonu
birler_matrisi = ones(5, 5);      % 5x5 piksel ortalama filtresi için çekirdek
birim_matris = eye(3);            % 3x3 Birim matris

% Veri Tipleri (Data Types)
% Standart hesaplamalarda 'double' kullanılırken, 
% görüntüler bellekte genellikle 0-255 aralığında 'uint8' olarak tutulur.
I_uint8 = uint8([0, 128, 255]);   % 8-bit işaretsiz tamsayı
I_double = double(I_uint8) / 255; % 0.0 ile 1.0 arasına normalize edilmiş matris

```

---

## 8. Uygulama: İlk Sentetik Görüntümüzü Oluşturalım

MATLAB'in matris mantığını görselleştirmek için harici bir dosya yüklemeden kodla bir görüntü matrisi oluşturalım:

```matlab
% Çalışma alanını temizle
clc; clearvars; close all;

% 1. 200x200 boyutunda 0'lardan (siyah) oluşan bir matris üret
goruntu = zeros(200, 200, 'uint8');

% 2. Matrisin ortasındaki 100x100'lük bölgeye 255 (beyaz) değeri ata
goruntu(51:150, 51:150) = 255;

% 3. Matrisi görselleştir
imshow(goruntu);
title('200x200 Sentetik İkili Görüntü');

```

---

## 9. Sık Yapılan Hatalar ve İpuçları

1. **İndeks Aşımı (`Index in position 1 exceeds array bounds`):** Matris boyutunun ötesinde bir satır veya sütuna erişmeye çalıştığınızda oluşur. `size()` komutuyla sınırları kontrol edin.
2. **Nokta Operatörünü Unutmak:** Piksel değerlerini çarparken/bölerken `.*` yerine `*` kullanırsanız, MATLAB standart matris çarpımı yapmaya çalışır ve matris boyutları uyuşmuyorsa hata verir.
3. **Veri Tipi Taşması:** `uint8` türündeki iki piksel değerini toplarken (örn. $200 + 100$) sonuç $300$ olamaz; en fazla $255$ değerine sabitlenir (clipping/saturation). Matematiksel işlemlerden önce veriyi `double()` türüne dönüştürmek gerekir.

---
