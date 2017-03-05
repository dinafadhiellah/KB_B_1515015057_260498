%Program ini memunculkan pernyataan nama orang,mata kuliah dan nilai. 
%yang sesuai dengan goal yang telah saya atur dan sesuai dengan calusa yang telah ada%


domains % Domains dalam Prolog seperti type dalam Pascal. Di bagian Domains, kita menyatakan jenis suatu variabel atau argumen%
orang=symbol %ini adalah variable orang yang tipenya adalah symbol%
mk=string %ini adalah variable matakuliah yang tipenya adalah string%
nilai=integer %ini adalah variable matakuliah yang tipenya adalah integer%

predicates % Kita harus mendeklarasikan predikat yang ada pada bagian Predicates dan mendefinisikannya dalam bagian Clauses%
nondeterm % ini untuk menjeneralkan input output program yang kita inginkan%
kuliah(orang,mk) %ini tu kalau menurut saya,kayak method(parameter) dalam pemrograman dalam netbeans%
nondeterm
nilai(orang,mk,nilai)
nondeterm
lulus(orang,mk)

clauses% berisi tentang fakta dan aturan%
lulus(iqbal,kecerdasanbuatan).%tanda titik dan koma mempunyai arti masing-masing, koma untuk tanda and serta . sama seperti ; dalam bahasa pemrograman lain untuk mengakhiri suatu perintah%
lulus(olip,kecerdasanbuatan).
lulus(dina,visual).
lulus(cece,framework).

kuliah(iqbal,framework).
kuliah(iqbal,kecerdasanbuatan).
kuliah(olip,logika).
kuliah(dina,visual).

nilai(iqbal,kecerdasanbuatan,90).
nilai(syifa,logika,45).
nilai(dina,visual,80).
nilai(olip,logika,85).
nilai(cece,framework,77).

goal %menurut saya ini merupakan tujuan kita dari membuat program setelah mendeklerasikan varibale di domains,predicates dan clauses%
lulus(X,Y),%yang saya ingin dari program ini adalah untuk menampilkan pernyataan dan pertanyaan dari orang dan matakuliah yang %
kuliah(X,Y),
nilai(X,Y,Z),Z>50.%ini adalah goal yang nilainya lebih dari 50%