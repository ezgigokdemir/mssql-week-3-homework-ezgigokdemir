--01.02.2007 - 05.03.2014 tarihleri aras�nda hangi �r�nden ka� adet sipari� edildi�ini bulan SQL kodunu yaz�n�z.
select d.urunKod, sum(d.adet) from tblSiparis s
	join tblSiparisDetay d on s.faturaKod = d.faturaKod
	where s.siparisTarih between '2007-02-01' and '2014-03-05'
	group by d.urunKod