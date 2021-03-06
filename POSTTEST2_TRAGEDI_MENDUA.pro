domains
nama,jender,pekerjaan,benda,alasan,zat= symbol
umur = integer

predicates
nondeterm 
orang(symbol,integer,symbol,symbol)
nondeterm 
mendua(symbol,symbol)
nondeterm
mati_dengan(symbol,symbol)
nondeterm
mati(symbol)
nondeterm 
pembunuh(symbol)
nondeterm
motif(symbol)
nondeterm
ternodai(symbol,symbol)
nondeterm
punya(symbol,symbol)
nondeterm 
ibarat(symbol,symbol)
nondeterm 
kemungkinan_punya(symbol,symbol)
nondeterm 
disangka(symbol)

clauses
orang(gonzales,45,m,guru).
orang(ichsan,25,m,developer).
orang(sarman,25,m,programer).
orang(jodi,25,m,pencopet).

mendua(santi,jodi).
mendua(santi,gonzales).
mendua(lisa,jodi).

mati_dengan(lisa,palu).
mati(lisa).

motif(utang).
motif(cemburu).
motif(tersakiti).


ternodai(gonzales,darah).
ternodai(lisa,darah).
ternodai(ichsan,lumpur).
ternodai(jodi,coklat).
ternodai(santi,coklat).

punya(gonzales,balok).
punya(jodi,pisau).

ibarat(balok,palu).
ibarat(pisau,kapak).
ibarat(gunting,pisau).
ibarat(linggis,pentungan).

kemungkinan_punya(X,sepatu_bola) :-orang(X,_,_,pemain_sepak_bola).
kemungkinan_punya(X,gunting) :-orang(X,_,_,pekerja_salon).
kemungkinan_punya(X,Benda) :-punya(X,Benda).


disangka(X):-mati_dengan(lisa,Senjata) ,ibarat(Benda,Senjata) ,kemungkinan_punya(X,Benda).
disangka(X) :-motif(cemburu),orang(X,_,m,_),mendua(lisa,X).
disangka(X) :-motif(cemburu),orang(X,_,f,_),mendua(X,Lakilaki),mendua(lisa,Lakilaki).
disangka(X) :-motif(uang),orang(X,_,_,pencopet).
pembunuh(X) :-orang(X,_,_,_),mati(Terbunuh),
Terbunuh <> X,disangka(X),
ternodai(X,Zat),ternodai(Terbunuh,Zat).

Goal
pembunuh(Pembunuh). 

