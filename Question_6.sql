--En fazla sipariþ veren meslek grubunu bulunuz.
select m.*, T1.Total from tblMeslek m
	join (select top 1 k.meslekKod, count(k.meslekKod) Total from tblSiparis s
			join tblKullanici k on s.kullaniciKod = k.kullaniciKod
			join tblMeslek m on m.meslekKod = k.meslekKod
			group by k.meslekKod
			order by count(k.meslekKod) desc) as T1
	on m.meslekKod = T1.meslekKod
