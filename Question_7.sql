--x numaral� �r�n� en fazla sipari� veren �ehri bulunuz.
select top 1 k.sehir, count(k.sehir) Total from tblSiparis s
	join tblSiparisDetay d on d.faturaKod = s.faturaKod
	join tblKullanici k on s.kullaniciKod = k.kullaniciKod
	where d.urunKod = 3265
	group by k.sehir
	order by Total desc