# MATLAB ile Piksel İşlemleri

Bu örnekler, MATLAB ve Image Processing Toolbox ile sunulan hazır görüntüleri kullanır. Harici görüntü eklemek gerekmez.

| Görüntü | Türü | Kullanım |
|---|---|---|
| `cameraman.tif` | Gri seviyeli | Piksel ve parlaklık işlemleri |
| `peppers.png` | RGB renkli | Renk kanalları ve gri seviye dönüşümü |
| `coins.png` | Gri seviyeli | Eşikleme |

Her kod bloğu bağımsız olarak çalıştırılabilir ve ayrı bir `.m` dosyasına kaydedilebilir.

---

## 1. Görüntü Okuma ve Gösterme

**Dosya:** `01_goruntu_okuma.m`

```matlab
I = imread('cameraman.tif');

figure;
imshow(I);
title('Orijinal Görüntü');
```

- `imread`: Görüntüyü okur.
- `imshow`: Görüntüyü gösterir.
- `title`: Başlık ekler.

---

## 2. Görüntü Bilgilerini Öğrenme

**Dosya:** `02_goruntu_bilgileri.m`

```matlab
I = imread('cameraman.tif');

[satir, sutun] = size(I);

fprintf('Satır sayısı: %d\n', satir);
fprintf('Sütun sayısı: %d\n', sutun);
fprintf('Piksel sayısı: %d\n', numel(I));
fprintf('Veri türü: %s\n', class(I));
```

**Açıklama:** Bu görüntü gri seviyelidir. Dolayısıyla `numel(I)`, toplam piksel sayısını verir.

---

## 3. Bir Pikselin Değerini Okuma

**Dosya:** `03_piksel_okuma.m`

```matlab
I = imread('cameraman.tif');

deger = I(100, 150);

fprintf('Piksel değeri: %d\n', deger);
```

**Açıklama:** `I(100,150)`, 100. satır ve 150. sütundaki piksele erişir. MATLAB’da indisler 1’den başlar.

---

## 4. Piksel Değerlerini Değiştirme

**Dosya:** `04_piksel_degistirme.m`

```matlab
I = imread('cameraman.tif');

sonuc = I;

% Seçilen bölgeyi beyaz yap.
sonuc(50:100, 50:100) = 255;

figure;

subplot(1, 2, 1);
imshow(I);
title('Orijinal');

subplot(1, 2, 2);
imshow(sonuc);
title('Beyaz Bölge Eklendi');
```

**Açıklama:** Seçilen satır ve sütunların kesişimindeki pikseller 255 yapılır. Siyah bir bölge oluşturmak için değer `0` olarak değiştirilebilir.

---

## 5. RGB Piksel Değerlerini Okuma

**Dosya:** `05_rgb_piksel.m`

```matlab
I = imread('peppers.png');

R = I(100, 150, 1);
G = I(100, 150, 2);
B = I(100, 150, 3);

fprintf('RGB = (%d, %d, %d)\n', R, G, B);
```

**Açıklama:** Üçüncü indis renk kanalını belirtir: `1` kırmızı, `2` yeşil, `3` mavi.

---

## 6. Renk Kanallarını Ayırma

**Dosya:** `06_rgb_kanallari.m`

```matlab
I = imread('peppers.png');

R = I(:, :, 1);
G = I(:, :, 2);
B = I(:, :, 3);

figure;

subplot(1, 4, 1);
imshow(I);
title('Orijinal');

subplot(1, 4, 2);
imshow(R);
title('R Kanalı');

subplot(1, 4, 3);
imshow(G);
title('G Kanalı');

subplot(1, 4, 4);
imshow(B);
title('B Kanalı');
```

**Açıklama:** Kanallar gri seviyeli gösterilir. Açık bölgeler, ilgili renk bileşeninin yüksek olduğunu belirtir.

---

## 7. Gri Seviyeye Dönüştürme

**Dosya:** `07_gri_seviye.m`

```matlab
I = imread('peppers.png');

gri = rgb2gray(I);

figure;

subplot(1, 2, 1);
imshow(I);
title('Renkli');

subplot(1, 2, 2);
imshow(gri);
title('Gri Seviyeli');
```

**Açıklama:** `rgb2gray`, üç renk bileşenini tek yoğunluk bileşenine dönüştürür.

---

## 8. Parlaklık Artırma ve Azaltma

**Dosya:** `08_parlaklik.m`

```matlab
I = imread('cameraman.tif');

acik = imadd(I, 40);
koyu = imsubtract(I, 40);

figure;

subplot(1, 3, 1);
imshow(koyu);
title('Koyu');

subplot(1, 3, 2);
imshow(I);
title('Orijinal');

subplot(1, 3, 3);
imshow(acik);
title('Açık');
```

**Açıklama:** Her piksele 40 eklenir veya çıkarılır. Bu `uint8` görüntüde sonuçlar 0–255 aralığında sınırlandırılır.

---

## 9. Kontrastı Değiştirme

**Dosya:** `09_kontrast.m`

```matlab
I = imread('cameraman.tif');

A = double(I);

dusuk = 0.5 * (A - 128) + 128;
yuksek = 1.5 * (A - 128) + 128;

% uint8 dönüşümü değerleri 0–255 aralığında sınırlandırır.
dusuk = uint8(dusuk);
yuksek = uint8(yuksek);

figure;

subplot(1, 3, 1);
imshow(dusuk);
title('Düşük Kontrast');

subplot(1, 3, 2);
imshow(I);
title('Orijinal');

subplot(1, 3, 3);
imshow(yuksek);
title('Yüksek Kontrast');
```

**Açıklama:** Piksel değerleri 128 etrafında ölçeklenir. `0.5` ton farklarını azaltır, `1.5` artırır.

---

## 10. Negatif Görüntü

**Dosya:** `10_negatif.m`

```matlab
I = imread('cameraman.tif');

negatif = imcomplement(I);

figure;

subplot(1, 2, 1);
imshow(I);
title('Orijinal');

subplot(1, 2, 2);
imshow(negatif);
title('Negatif');
```

**Açıklama:** Bu 8 bitlik görüntüde her piksel için `255 − piksel değeri` işlemi uygulanır.

---

## 11. Eşikleme

**Dosya:** `11_esikleme.m`

```matlab
I = imread('coins.png');

maske = I >= 100;

figure;

subplot(1, 2, 1);
imshow(I);
title('Orijinal');

subplot(1, 2, 2);
imshow(maske);
title('Eşik = 100');
```

**Açıklama:** 100 ve üzerindeki değerler beyaz, diğerleri siyah gösterilir. Eşik değeri değiştirilerek sonuç üzerindeki etkisi incelenebilir.

---

## 12. Gamma Dönüşümü

**Dosya:** `12_gamma.m`

```matlab
I = imread('cameraman.tif');

% Değerleri 0–1 aralığına dönüştür.
A = im2double(I);

acik = A .^ 0.5;
koyu = A .^ 2;

figure;

subplot(1, 3, 1);
imshow(acik);
title('Gamma = 0.5');

subplot(1, 3, 2);
imshow(A);
title('Orijinal / Gamma = 1');

subplot(1, 3, 3);
imshow(koyu);
title('Gamma = 2');
```

**Açıklama:** `.^`, her piksele ayrı ayrı üs alma işlemi uygular. Bu formülde gamma 1’den küçükse ara tonlar açılır, büyükse koyulaşır.

---

## 13. Döngüyle Piksel İşleme

**Dosya:** `13_dongu.m`

```matlab
I = imread('cameraman.tif');

[satir, sutun] = size(I);
sonuc = I;

for i = 1:satir
    for j = 1:sutun
        sonuc(i, j) = 255 - double(I(i, j));
    end
end

figure;
imshow(sonuc);
title('Döngüyle Negatif Görüntü');
```

**Açıklama:** Dış döngü satırları, iç döngü sütunları dolaşır. Her pikselin negatif değeri ayrı hesaplanır.

---

## 14. Görüntüyü Kaydetme

**Dosya:** `14_kaydetme.m`

```matlab
I = imread('peppers.png');

gri = rgb2gray(I);

imwrite(gri, 'peppers_gri.png');
```

**Açıklama:** Sonuç, MATLAB’ın çalışma klasörüne `peppers_gri.png` adıyla kaydedilir.
