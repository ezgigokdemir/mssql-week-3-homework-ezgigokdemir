--Ad� A ile ba�lay�p soyad�nda ak ge�en m��terilerden en fazla sipari� vereni bulunuz.
select top 1 s.kullaniciKod, count(s.kullaniciKod) from tblSiparis s
	join tblKullanici k on s.kullaniciKod = k.kullaniciKod
	where k.isim like 'A%' and k.soyad like '%ak%'
	group by s.kullaniciKod
	order by count(s.kullaniciKod) desc