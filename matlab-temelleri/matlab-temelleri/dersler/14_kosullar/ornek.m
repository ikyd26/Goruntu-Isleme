%% 14. Koşullu İşlemler
% Koşullar yukarıdan aşağıya kontrol edilir; ilk doğru koşulun bloğu çalışır. Not: Not aralıkları yalnızca programlama örneğidir.

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
