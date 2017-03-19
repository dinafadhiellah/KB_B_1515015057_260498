domains %adalah sesi untuk mendeklarasikan variable
nama = symbol %ini adalah pendeklerasian varibale nama dengan tipe data integer
ip= real %ini adalah pendeklerasian variable gpa tipe data real

predicates %adalah sesi untuk menedeklerasikan method dan parameter-paramternya yang juga sudah di deklerasikan dalam domains
nondeterm
murid_kehormatan(nama)
nondeterm
murid(nama, ip)
nondeterm
masa_percobaan(nama)

clauses
murid_kehormatan(Name):- 
murid(Name, Ip),Ip>=3.5,
not(masa_percobaan(Name)).
murid("Eko", 3.5).
murid("Kiwa", 2.0).
murid("Dina", 3.7).
murid("Budi",3.5).
murid("Cece",3.55).
masa_percobaan("Eko").
masa_percobaan("kiwa").

goal
write("Yang mendapat  penghargaan adalah : "),
murid_kehormatan(Name), write(Name),nl,fail.