```

%% MATLAB'A GIRIS VE TEMEL ISLEMLER
% Bu dosyada MATLAB programlamanin temel konulari ele alinmaktadir.
% Konular:
% 1. Calisma ortaminin temizlenmesi
% 2. Degisken tanimlama
% 3. Aritmetik islemler
% 4. Vektor olusturma
% 5. Matris olusturma
% 6. Matris elemanlarina erisim
% 7. Matris elemanlarini degistirme
% 8. Matris boyutlari
% 9. Hazir matris fonksiyonlari
% 10. Karsilastirma ve mantiksal operatorler
% 11. Kosullu ifadeler
% 12. For dongusu

%% 1. MATLAB CALISMA ORTAMININ TEMIZLENMESI

clc;                  % Command Window ekranini temizler.
clear;                % Workspace icerisindeki degiskenleri temizler.
close all;            % Acik olan grafik pencerelerini kapatir.

% MATLAB'da % isareti yorum satiri olusturur.
% Yorum satirlari program tarafindan calistirilmaz.
% %% isareti kodu ayri bolumlere ayirir.
% Noktali virgul (;) komut sonucunun ekrana yazilmasini engeller.

%% 2. DEGISKEN TANIMLAMA

a = 10;               % a degiskenine 10 degeri atanir.
b = 20;               % b degiskenine 20 degeri atanir.

a                     % a degiskeninin degerini ekrana yazdirir.
b                     % b degiskeninin degerini ekrana yazdirir.

disp(a)               % a degiskeninin degerini ekrana yazdirir.
disp(b)               % b degiskeninin degerini ekrana yazdirir.

who                   % Workspace icerisindeki degisken isimlerini listeler.
whos                  % Degiskenlerin boyut, tur ve bellek bilgilerini gosterir.

%% 3. TEMEL ARITMETIK ISLEMLER

a = 10;               % Birinci sayi tanimlanir.
b = 20;               % Ikinci sayi tanimlanir.

toplam = a + b;       % Iki sayiyi toplar. Sonuc: 30
fark = a - b;         % Iki sayiyi cikarir. Sonuc: -10
carpim = a * b;       % Iki sayiyi carpar. Sonuc: 200
bolum = a / b;        % Birinci sayiyi ikinci sayiya boler. Sonuc: 0.5

kuvvet = a^2;         % a sayisinin karesini hesaplar. Sonuc: 100
ortalama = (a+b)/2;   % Iki sayinin aritmetik ortalamasini hesaplar. Sonuc: 15

kok = sqrt(25);       % 25 sayisinin karekokunu hesaplar. Sonuc: 5

disp(toplam)          % Toplama isleminin sonucunu gosterir.
disp(fark)            % Cikarma isleminin sonucunu gosterir.
disp(carpim)          % Carpma isleminin sonucunu gosterir.
disp(bolum)           % Bolme isleminin sonucunu gosterir.
disp(kuvvet)          % Kuvvet alma isleminin sonucunu gosterir.
disp(ortalama)        % Aritmetik ortalamayi gosterir.
disp(kok)             % Karekok sonucunu gosterir.

%% 4. VEKTOR OLUSTURMA

A = 1:10;             % 1'den 10'a kadar birer artan vektor olusturur.

B = 0:2:10;           % 0'dan 10'a kadar ikiser artan vektor olusturur.

C = 0:5:100;          % 0'dan 100'e kadar beser artan vektor olusturur.

D = 10:-2:0;          % 10'dan 0'a kadar ikiser azalan vektor olusturur.

E = [10 20 30 40];    % Satir vektoru olusturur.

F = [10;20;30;40];    % Sutun vektoru olusturur.

% Vektor olusturmada iki nokta operatorunun kullanimi:
% baslangic:bitis
% baslangic:adim:bitis

% Ornek:
% 1:10      -> 1,2,3,4,5,6,7,8,9,10
% 0:2:10    -> 0,2,4,6,8,10
% 1:5:100   -> 1,6,11,16,...,96

%% 5. MATRIS OLUSTURMA

A = [10 20 30;
     40 50 60;
     70 80 90;
     100 110 120;
     120 130 140];

% A matrisi 5 satir ve 3 sutundan olusmaktadir.
% Koseli parantezler [] matris olusturmak icin kullanilir.
% Bosluk veya virgul ayni satirdaki elemanlari ayirir.
% Noktali virgul (;) matrisin satirlarini ayirir.

A                     % A matrisinin tamamini ekrana yazdirir.

%% 6. MATRIS ELEMANLARINA ERISIM

deger = A(2,3);       % 2. satir ve 3. sutundaki elemana erisir. Sonuc: 60

A(1,1)                % 1. satir ve 1. sutundaki elemani getirir. Sonuc: 10

A(3,2)                % 3. satir ve 2. sutundaki elemani getirir. Sonuc: 80

A(5,3)                % 5. satir ve 3. sutundaki elemani getirir. Sonuc: 140

% MATLAB'da indisler 1'den baslar.
% A(satir,sutun) ifadesi ile matris elemanlarina erisilir.

%% 7. MATRISTE SATIR VE SUTUN SECME

A(2,:)                % Matrisin 2. satirindaki butun elemanlari getirir.

A(:,1)                % Matrisin 1. sutunundaki butun elemanlari getirir.

A(1,:)                % Matrisin ilk satirini getirir.

A(:,3)                % Matrisin 3. sutununu getirir.

A(end,:)              % Matrisin son satirini getirir.

A(:,end)              % Matrisin son sutununu getirir.

A(end,1:end)          % Son satirdaki 1. sutundan son sutuna kadar getirir.

A(1:3,:)              % Ilk 3 satiri getirir.

A(:,1:2)              % Ilk 2 sutunu getirir.

A(2:4,1:2)            % 2-4. satirlar ile 1-2. sutunlari secer.

% : operatoru ilgili boyuttaki butun indisleri temsil eder.
% end ifadesi ilgili boyuttaki son indisi temsil eder.

%% 8. MATRIS ELEMANLARINI DEGISTIRME

A = [10 20 30;
     40 50 60;
     70 80 90;
     100 110 120;
     120 130 140];

A(2,3) = 500;         % 2. satir 3. sutundaki elemani 500 yapar.

A(1,1) = 100;         % 1. satir 1. sutundaki elemani 100 yapar.

A(1:2:5,1) = 50;      % 1, 3 ve 5. satirlarin 1. sutununu 50 yapar.

A(:,2) = 25;          % 2. sutundaki butun elemanlari 25 yapar.

A(2,:) = 10;          % 2. satirdaki butun elemanlari 10 yapar.

disp(A)               % Guncellenmis matrisi ekrana yazdirir.

%% 9. MATRIS BOYUTLARINI BULMA

A = [10 20 30;
     40 50 60;
     70 80 90;
     100 110 120;
     120 130 140];

[satir,sutun] = size(A);  % Matrisin satir ve sutun sayisini hesaplar.

satir = size(A,1);       % Matrisin satir sayisini verir. Sonuc: 5

sutun = size(A,2);       % Matrisin sutun sayisini verir. Sonuc: 3

boyut = satir*sutun;     % Toplam eleman sayisini hesaplar. Sonuc: 15

boyut = size(A,1)*size(A,2); % Satir ve sutun sayilarini carpar.

boyut = numel(A);        % Matrisin toplam eleman sayisini verir. Sonuc: 15

uzunluk = length(A);     % En buyuk boyutun uzunlugunu verir. Sonuc: 5

% size(A)    -> Matrisin boyutlarini verir.
% size(A,1)  -> Satir sayisini verir.
% size(A,2)  -> Sutun sayisini verir.
% numel(A)   -> Toplam eleman sayisini verir.
% length(A)  -> En buyuk boyutun uzunlugunu verir.

%% 10. HAZIR MATRIS OLUSTURMA FONKSIYONLARI

A = zeros(10,10);        % 10x10 boyutunda sifir matrisi olusturur.

B = ones(10,10);         % 10x10 boyutunda birlerden olusan matris olusturur.

C = zeros(10,10)+20;     % Butun elemanlari 20 olan matris olusturur.

D = ones(10,10)+40;      % Butun elemanlari 41 olan matris olusturur.

E = 20*ones(10,10);      % Butun elemanlari 20 olan matris olusturur.

F = eye(5);              % 5x5 boyutunda birim matris olusturur.

G = rand(3,3);           % 0 ile 1 arasinda rastgele sayilar olusturur.

% zeros(m,n) -> m satir n sutunluk sifir matrisi
% ones(m,n)  -> m satir n sutunluk birler matrisi
% eye(n)     -> n x n boyutunda birim matris
% rand(m,n)  -> m x n boyutunda rastgele sayilar matrisi

%% 11. MATRISLERLE ARITMETIK ISLEMLER

A = [1 2;
     3 4];

B = [5 6;
     7 8];

C = A+B;                 % Iki matrisi eleman bazinda toplar.

D = A-B;                 % Iki matrisi eleman bazinda cikarir.

E = A*B;                 % Matris carpimi yapar.

F = A.*B;                % Karsilikli elemanlari carpar.

G = A.^2;                % Matrisin her elemaninin karesini alir.

H = A./B;                % Karsilikli elemanlari birbirine boler.

% *  -> Matris carpimi
% .* -> Eleman bazinda carpma
% ^  -> Matris kuvveti
% .^ -> Eleman bazinda kuvvet alma
% ./ -> Eleman bazinda bolme

%% 12. KARSILASTIRMA OPERATORLERI

a = 10;                  % Birinci degisken
b = 20;                  % Ikinci degisken

a > b                   % a, b'den buyuk mu? Sonuc: false

a < b                   % a, b'den kucuk mu? Sonuc: true

a >= b                  % a, b'den buyuk veya esit mi?

a <= b                  % a, b'den kucuk veya esit mi?

a == b                  % a ile b esit mi?

a ~= b                  % a ile b farkli mi?

% Karsilastirma islemleri true veya false degeri uretir.
% true  -> Mantiksal dogru (1)
% false -> Mantiksal yanlis (0)

%% 13. MANTIKSAL OPERATORLER

a = 10;
b = 20;

sonuc1 = a < 20 && b > 10;  % Her iki kosul da dogruysa true olur.

sonuc2 = a > 20 || b > 10;  % Kosullardan en az biri dogruysa true olur.

sonuc3 = ~(a > b);          % Mantiksal DEGIL islemi uygular.

% && -> Kisa devreli mantiksal VE
% || -> Kisa devreli mantiksal VEYA
% ~  -> Mantiksal DEGIL
% &  -> Eleman bazinda mantiksal VE
% |  -> Eleman bazinda mantiksal VEYA

%% 14. IF - ELSE KOSULLU IFADELER

A = [10 20 30;
     40 50 60;
     70 80 90;
     100 110 120;
     120 130 140];

if A(4,1)>100 && A(2,2)>100  % Iki kosulun dogru olup olmadigini kontrol eder.

    disp('Deger Buyuktur')   % Iki kosul da dogruysa calisir.

else                        % Kosul saglanmiyorsa bu bolume gecilir.

    disp('Deger Kucuktur')  % Kosul yanlissa calisir.

end                         % Kosullu ifade sonlandirilir.

% A(4,1) = 100 oldugundan ilk kosul yanlistir.
% A(2,2) = 50 oldugundan ikinci kosul da yanlistir.
% Ekrana "Deger Kucuktur" yazdirilir.

%% 15. IF - ELSEIF - ELSE YAPISI

not = 75;                   % Ogrencinin notu tanimlanir.

if not >= 90                % Not 90 veya daha buyukse

    disp('AA')

elseif not >= 80            % Not 80-89 araligindaysa

    disp('BA')

elseif not >= 70            % Not 70-79 araligindaysa

    disp('BB')

elseif not >= 60            % Not 60-69 araligindaysa

    disp('CB')

else                        % Yukaridaki kosullarin hicbiri saglanmazsa

    disp('FF')

end                         % Kosullu ifade sonlandirilir.

%% 16. FOR DONGUSU

for i = 1:5:100             % 1'den baslar, beser artar, 100'u asmaz.

    disp(i)                 % Dongu degiskenini ekrana yazdirir.

end                         % Donguyu sonlandirir.

% Dongu degiskeninin aldigi degerler:
% 1, 6, 11, 16, 21, ..., 96
% Dongu toplam 20 kez calisir.

%% 17. FOR DONGUSU ILE 1'DEN 10'A KADAR SAYILAR

for i = 1:10               % i degiskeni 1'den 10'a kadar deger alir.

    disp(i)                 % i degerini ekrana yazdirir.

end                         % Donguyu sonlandirir.

%% 18. FOR DONGUSU ILE CIFT SAYILAR

for i = 2:2:100            % 2'den 100'e kadar ikiser artar.

    disp(i)                 % Cift sayilari ekrana yazdirir.

end                         % Donguyu sonlandirir.

%% 19. FOR DONGUSU ILE TEK SAYILAR

for i = 1:2:99             % 1'den 99'a kadar ikiser artar.

    disp(i)                 % Tek sayilari ekrana yazdirir.

end                         % Donguyu sonlandirir.

%% 20. FOR DONGUSU ILE TOPLAM HESAPLAMA

toplam = 0;                 % Toplam degiskeni sifirdan baslatilir.

for i = 1:10               % 1'den 10'a kadar dongu olusturulur.

    toplam = toplam+i;      % Her adimda i degeri toplama eklenir.

end                         % Dongu sonlandirilir.

disp(toplam)                % Toplami ekrana yazdirir. Sonuc: 55

%% 21. FOR DONGUSU ILE MATRIS ELEMANLARINA ERISIM

A = [10 20 30;
     40 50 60;
     70 80 90];

for i = 1:size(A,1)         % Matrisin satirlari boyunca ilerler.

    for j = 1:size(A,2)     % Matrisin sutunlari boyunca ilerler.

        disp(A(i,j))        % Secilen matris elemanini ekrana yazdirir.

    end                     % Ic donguyu sonlandirir.

end                         % Dis donguyu sonlandirir.

%% 22. FOR DONGUSU ILE MATRIS ELEMANLARINI TOPLAMA

A = [10 20 30;
     40 50 60;
     70 80 90];

toplam = 0;                 % Toplam degiskeni sifirlanir.

for i = 1:size(A,1)         % Satirlar boyunca ilerler.

    for j = 1:size(A,2)     % Sutunlar boyunca ilerler.

        toplam = toplam+A(i,j); % Her elemani toplama ekler.

    end

end

disp(toplam)                % Matris elemanlari toplamini gosterir. Sonuc: 450

% Alternatif:
toplam2 = sum(A,"all");     % Matrisin tum elemanlarini dogrudan toplar.

%% 23. KOMUTLARIN KISA TANIMLARI

% clc       : Command Window ekranini temizler.
% clear     : Workspace degiskenlerini temizler.
% close all : Acik grafik pencerelerini kapatir.
% disp      : Deger veya metni ekrana yazdirir.
% fprintf   : Bicimlendirilmis cikti olusturur.
% who       : Degisken isimlerini listeler.
% whos      : Degiskenlerin ayrintili bilgilerini gosterir.
% sqrt      : Karekok hesaplar.
% size      : Dizinin boyutlarini verir.
% numel     : Dizinin toplam eleman sayisini verir.
% length    : Dizinin en buyuk boyut uzunlugunu verir.
% zeros     : Sifirlardan olusan dizi olusturur.
% ones      : Birlerden olusan dizi olusturur.
% eye       : Birim matris olusturur.
% rand      : Rastgele sayilardan olusan dizi olusturur.
% sum       : Sayisal elemanlarin toplamini hesaplar.
% if        : Kosullu islem baslatir.
% elseif    : Alternatif bir kosulu kontrol eder.
% else      : Kosul saglanmadiginda calisir.
% for       : Tekrarli islemler icin dongu olusturur.
% end       : Kontrol blogunu sonlandirir.
% end       : Indislemede son elemani temsil eder.

%% 24. OPERATORLERIN KISA TANIMLARI

% =         : Degiskene deger atar.
% +         : Toplama islemi yapar.
% -         : Cikarma islemi yapar.
% *         : Matris carpimi veya skaler carpma yapar.
% /         : Sagdan matris bolme veya skaler bolme yapar.
% ^         : Matris kuvveti veya skaler us alma yapar.
% .*        : Eleman bazinda carpma yapar.
% ./        : Eleman bazinda bolme yapar.
% .^        : Eleman bazinda us alma yapar.
% >         : Buyuktur karsilastirmasi yapar.
% <         : Kucuktur karsilastirmasi yapar.
% >=        : Buyuk veya esittir.
% <=        : Kucuk veya esittir.
% ==        : Esittir karsilastirmasi yapar.
% ~=        : Esit degildir karsilastirmasi yapar.
% &&        : Kisa devreli mantiksal VE operatoru.
% ||        : Kisa devreli mantiksal VEYA operatoru.
% &         : Eleman bazinda mantiksal VE operatoru.
% |         : Eleman bazinda mantiksal VEYA operatoru.
% ~         : Mantiksal DEGIL operatoru.
% :         : Dizi olusturur veya indis araligi secer.
% ;         : Ciktiyi bastirir veya matris satirlarini ayirir.
% %         : Yorum satiri olusturur.
% %%        : Kod bolumu olusturur.
% []        : Matris veya vektor olusturur.
% ()        : Fonksiyon cagirir, indisleme veya gruplama yapar.

```
