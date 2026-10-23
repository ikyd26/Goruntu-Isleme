
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




```

---

