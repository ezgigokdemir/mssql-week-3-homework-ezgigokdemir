--01.02.2007 - 05.03.2014 tarihleri arasýnda hangi üründen kaç adet sipariþ edildiðini bulan SQL kodunu yazýnýz.
select d.urunKod, sum(d.adet) from tblSiparis s
	join tblSiparisDetay d on s.faturaKod = d.faturaKod
	where s.siparisTarih between '2007-02-01' and '2014-03-05'
	group by d.urunKod