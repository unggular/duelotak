extern printf 
extern scanf

%include 'fi-template/includeFunc.asm'
%include "hello.asm"
%include "help.asm"
%include "about.asm"
%include "intro.asm"
%include "cetakKategori.asm"
%include "clear.asm"
%include "sesi1.asm"
%include "kuliner.asm"
%include "bukuDanKata.asm"
%include "teknologi.asm"
%include "videoGame.asm"
%include "floraDanFauna.asm"
%include "random.asm"
%include "cekJawaban.asm"
%include "kulinerNextPlayer.asm"
%include "cetakNilai.asm"
%include "hapusKategori.asm"
%include "incrementNilai.asm"
%include "bukuDanKataNextPlayer.asm"
%include "teknologiNextPlayer.asm"
%include "videoGameNextPlayer.asm"
%include "floraDanFaunaNextPlayer.asm"
%include "sesi2.asm"
%include "sesi3.asm"
%include "sesi4.asm"
%include "duelOtak.asm"
%include "inputSign.asm"
%include "validasi.asm"
%include "hasilAkhir.asm"

section .data
	formatPrint db '%d',10, 0
	formatPrintString db '%s',10,0
	skorSign1 db '---------------',0
	skorSign2 db '---------------',10,0
	skorPlayer1 db 10,'Skor ',0
	skorPlayer2 db 10,'Skor ',0
	selamat db 'Selamat Datang di Duel Otak Assembly',10,'1. Mulai Bermain', 10, '2. Help',10,'3. About',10,'4. Exit',10,0
	lenSelamat equ $-selamat	

	help db 'Cara Bermain:',10,'1. Pilih Mulai Bermain',10,'2. Ketik Nama',10,'3. Pilih Kategori',10,'4. Jawab Soal',10,0
	lenHelp equ $-help

	judul db 'Permainan Duel Otak Assembly by :',10,'G64154013 Unggul Arlin Wiryanto',10,'G64154025 Adji Danu Pranoto',10,0
	lenJudul equ $-judul
	
	kembali db 'Kembali ke Menu? (y/n)',10,0
	lenKembali equ $-kembali

	tanyaUsername1 db 'Ketentuan: Username maksimal 10 karakter',10,'Masukkan Username Player 1: '
	lenUsername1 equ $-tanyaUsername1
	tanyaUsername2 db 'Masukkan Username Player 2: '
	lenUsername2 equ $-tanyaUsername2
	
	clearScr db 27,'[H', 27, '[2J',0
	lenClearScr equ $-clearScr
	
	sign db '->',32,0
	
	timeval:
    	tv_sec  dd 0
    	tv_usec dd 0
	
	salahInputan db 'Input yang anda masukkan tidak sesuai!',10,0
	true db 'Jawaban Anda Benar!!!',10,0
	selesai db 'Permainan Selesai!',10,0
	
	p1 db 'Player 1: '
	lenp1 equ $-p1
	p2 db 'Player 2: '
	lenp2 equ $-p2
	
	win db 'Pemenangnya ',0
	seri db 'Hasil Seri!',10,0	
	ready db  'Apakah anda siap? (y/n)',10,0
	lenReady equ $-ready
	
	mulai db 'Permainan dimulai! ',0
	lenMulai equ $-mulai
	
	kategori db 'Kategori: ',10,0
	lenKategori equ $-kategori
	kategori1 db '1. Kuliner',10,0
	lenKategori1 equ $-kategori1
	kategori2 db '2. Buku dan Kata',10,0
	lenKategori2 equ $-kategori2
	kategori3 db '3. Teknologi',10,0
	lenKategori3 equ $-kategori3
	kategori4 db '4. Video Game',10,0
	lenKategori4 equ $-kategori4
	kategori5 db '5. Flora dan Fauna',10,0
	lenKategori5 equ $-kategori5 
	
	p1Pilih db 'Player 1 pilih kategori',10,0
	lenP1Pilih equ $-p1Pilih
	p2Pilih db 'Player 2 pilih kategori',10,0
	
	p1Main db 'Player 1 Bermain!',10,0
	p2Main db 'Player 2 Bermain!',10,0
	
	wlcm1 db '------------------------------------------------------------------------',10,0
    wlcm2 db '****  *   * ***** *        ***** *****  ***  *  *     ***  ***** **   **',10,0
    wlcm3 db '*   * *   * *     *        *   *   *   *   * * *     *   * *     * * * *',10,0
    wlcm4 db '*   * *   * ***** *        *   *   *   ***** **      ***** ***** *  *  *',10,0
    wlcm5 db '*   * *   * *     *        *   *   *   *   * * *     *   *     * *     *',10,0
    wlcm6 db '****  ***** ***** *****    *****   *   *   * *  *    *   * ***** *     *',10,0
    wlcm7 db '------------------------------------------------------------------------',10,0
    
	soalKuliner db 'Apa bahan utama membuat jajan tradisional klepon ?           ',10,'a. Tepung beras ketan dan gula merah',10,'b. Beras merah dan gula pasir',10,'c. Tepung beras ketan dan kacang merah',10,'d. Kacang hijau dan pati jagung',10,0
			    db 'Mengocok kuning telur, minyak, garam, merica, sedikit mustard dan cuka akan menjadi ?                                                         ',10,'a. Bearnaise',10,'b. Thousand island',10,'c. Mayones',10,'d. Peternakan',10,0
			    db 'Apa yang dimaksud dengan galette ?                                                                      ',10,'a. Pancake ala perancis',10,'b. Rebusan ala turki',10,'c. Pie ala inggris',10,'d. Daging babi asap ala italia',10,0
			    db 'Apa sebutan anggur yang terbuat dari kismis yang dikeringkan selama 100 hari ?                                                                         ',10,'a. Marsala',10,'b. Vino Secco',10,'c. Amarone',10,'d. Pecorino',10,0
			    db 'Apa minuman beralkohol hasil fermentasi beras putih dari Jepang ?                                                                                                     ',10,'a. Kombu',10,'b. Dashi',10,'c. Uni',10,'d. Sake',10,0
			    db 'Apa sebutan untuk segelas besar susu kocok dengan sedikit espresso ?                                                              ',10,'a. Caffe macchiato',10,'b. Cappuccino',10,'c. Caffe melange',10,'d. Latte macchiato',10,0
			    db 'Manakah berikut ini yang tidak termasuk sayuran ?                                                                                                        ',10,'a. Bayam',10,'b. Ketimun',10,'c. Kembang kol',10,'d. Brokoli',10,0
			    db 'Logo restoran apa yang berbentuk huruf M melengkung ?                                                                                                     ',10,'a. Subway',10,'b. McDonalds',10,'c. KFC',10,'d. Burger King',10,0
			    db 'Daerah manakah yang merupakan penghasil kopi terbesar di Indonesia ?                                                                                       ',10,'a. Pati',10,'b. Lampung',10,'c. Toraja',10,'d. Banjarmasin',10,0
			    db 'Apa yang dimaksud dengan bouquet garni ?                                                                                             ',10,'a. Sejenis saus',10,'b. Campuran herbal',10,'c. Sejenis roti',10,'d. Sejenis sup',10,0
	
	soalBukuDanKata db 'Apa nama samaran yang dipakai penulis bersepupu, Freddsick Dannay dan Manfred B. Lee ?                                                       ',10,'a. Ellery Queen',10,'b. Surya Pons',10,'c. Cardy Keens',10,'d. Ed McBain',10,0
					db 'Apa arti kata temporary ?                                                                                                                          ',10,'a. Abadi',10,'b. Aktik panjang',10,'c. Tersesat ',10,'d. Sementara',10,0
					db 'Siapa penulis The Jungle Book yang menginspirasi film Disney dengan judul yang sama ?                                       ',10,'a. Clayton Rawson',10,'b. Rudyard Kipling',10,'c. Robert E. Howard',10,'d. Samuel Beckett',10,0
					db 'Apa nama majalah yang didirikan Hugh Hefner pada tahun 1953 ?                                                                                            ',10,'a. Playboy',10,'b. Playmate',10,'c. Players',10,'d. Playgirl',10,0
					db 'Siapa penulis novel criminal tentang Victor Legris ?                                                                                       ',10,'a. Liza Marklund',10,'b. Meg Cabot',10,'c. Mark Twain',10,'d. Claude Izner',10,0
					db 'Tahun berapa buku pertama dari trilogi The Hunger Games diliris ?                                                                                                      ',10,'a. 2006',10,'b. 2008',10,'c. 2004',10,'d. 2010',10,0
					db 'Siapakah penulis Middlesex (2002) dan Virgin Suicides (1993) ?                                                               ',10,'a. Anne Devlin',10,'b. Diane Setter Field',10,'c. Jeffrey Eugenides',10,'d. Ehren Kruger',10,0
					db 'Dalam buku karangan Fyodor Dostoevsky yang mana dapat dijumpai karakter bernama Rodya ?                                   ',10,'a. The Idiot',10,'b. The Player',10,'c. Crime and Punishment',10,'d. The Brothers Karamazov',10,0
					db 'Apa buku yang tidak ditulis oleh penulis Clive Cussler ?                                                                                       ',10,'a. Deep Six',10,'b. Atlantis Found',10,'c. Hidden Depth',10,'d. Dragon',10,0
					db 'Apa istilah sastra yang didefinisikan sebagai unit dasar dan baris puisi ?                                                                                             ',10,'a. Bait',10,'b. Canto',10,'c. Bar',10,'d. Kaki',10,0
	
	soalTeknologi db 'Alat apa yang digunakan untuk mengukur kepadatan cairan ?                                                                                 ',10,'a. Manometer',10,'b. Hydrometer',10,'c. Termometer',10,'d. Titik Archimedes',10,0
				  db 'Apakah yang berkaitan dengan merek Airfix ?                                                                                       ',10,'a. Miniatur Pesawat ',10,'b. Perekat',10,'c. Miniatur Jalur Kereta',10,'d. Penambal',10,0
				  db 'Manakah diantara pilian berikut yang bukan perangkat lunak yang dimiliki Autodesk ?                                                              ',10,'a. 3D Studios Max',10,'b. Autocad',10,'c. Maya',10,'d. 3D Future Pro',10,0
				  db 'Mekanisme yang mengatur masuknya cahaya ke lensa pada sebuah kamera ?                                                                             ',10,'a. Aperture',10,'b. Shutter',10,'c. Viewfinder',10,'d. Image Sensor',10,0
				  db 'Pada tahun berapa Eberhard Seger merancang vacuum cleaner ?                                                                                                            ',10,'a. 1946',10,'b. 1810',10,'c. 1910',10,'d. 1962',10,0
				  db 'Apa nama mobil hybrid pertama yang diproduksi massal ?                                                                                                          ',10,'a. Lexus',10,'b. Prius',10,'c. Plato',10,'d. Prestige',10,0
				  db 'Dengan cara apa membuka kunci iPhone 5s ?                                                                                             ',10,'a. Mengguncang',10,'b. Lempar dan tangkap',10,'c. Sidik jari',10,'d. Kode suara',10,0
				  db 'Manakah rudal dengan sensor panas yang telah dinamai dengan nama ular padang gurun ?                                                                 ',10,'a. Fox-2',10,'b. Sidewinder',10,'c. Constrictor',10,'d. Maverick',10,0
				  db 'Apa nama belakang penerbang bersaudara, Orville dan Wilbur ?                                                                                                    ',10,'a. Smith',10,'b. Baker',10,'c. Addison',10,'d. Wirght',10,0
				  db 'Disebut apakah insrumen navigasi yang digunakan menganalisis jarak matahari dengan garis cakrawala ?                                                         ',10,'a. Lensa mata',10,'b. GPS',10,'c. Sextant',10,'d. Kompas',10,0
	
	soalVideoGame db 'Dalam game tahun 2007 manakah, pemain membuka portal biru merah untuk bergerak dalam 3D ?                                                         ',10,'a. Dimension Jump',10,'b. Portal',10,'c. Valve Gates',10,'d. Turret',10,0
				  db 'Termasuk dalam serial game manakah game Ocarina of Time ?                                                                      ',10,'a. Singstar',10,'b. World of Warcraft',10,'c. The Legend of Zelda',10,'d. Call of Duty',10,0										
				  db 'Apakah Unreal Engine 3 itu ?                                                                                               ',10,'a. Sebuah game fps',10,'b. Bos di akhir game',10,'c. Game mobil',10,'d. Sebuah game engine',10,0
				  db 'Manakah karakter yang bias dimainkan dalam game Mortal Kombat ?                                                                                         ',10,'a. Rocksteady',10,'b. Sub Zero',10,'c. Shiny',10,'d. Heihachi',10,0	
				  db 'Dalam game Assasins Creed, apa teknologi yang memungkin berkunjung ke masa lalu ?                                                               ',10,'a. A.M. Tech',10,'b. Animus',10,'c. Memory Extractor',10,'d. Abstergo',10,0
				  db 'Manakah kota pertama yang didatangi dalam game gangster GTA San Andreas ?                                                                      ',10,'a. San Fierro',10,'b. Los Angeles',10,'c. Los Santos',10,'d. Las Vegas',10,0
				  db 'Untuk konsol manakah seri game Forza Motorsport diproduksi secara eksklusif ?                                                                                 ',10,'a. Xbox',10,'b. PC',10,'c. Playstation',10,'d. Nintendo',10,0
				  db 'Manakah yang benar tentang game Silent Hill ?                                                                                                 ',10,'a. Game lucu',10,'b. Game balap',10,'c. Game perang',10,'d. Game horror',10,0
				  db 'Berapa level tertinggi game Diablo 3 ?                                                                                                                                        ',10,'a. 100',10,'b. 50',10,'c. 60',10,'d. 85',10,0
				  db 'Tergolong jenis permainan apa Cheops pyramid ?                                                                                           ',10,'a. Permainan musik',10,'b. Latihan perang',10,'c. Matematika',10,'d. Sejarah',10,0
		
	soalFloraDanFauna db 'Mana diantara ras berikut yang terutama digunakan sebagai anjing kereta luncur ?                                                 ',10,'a. Alaskan malamute ',10,'b. Labrador retriever ',10,'c. greyhound ',10,'d. shar pei',10,0
					  db 'Cheetah adalah hewan tercepat di darat. Berapa kecepatan maksimum yang bias dicapainya ?                                                        ',10,'a. 233 km/jam',10,'b. 110 km/jam',10,'c. 73 km/jam',10,'d. 150 km/jam',10,0
                      db 'Apa itu trenggiling ?                                                                                                                   ',10,'a. Buah',10,'b. Mamalia bersisik',10,'c. Berbagai pohon',10,'d. Serpihan ikan',10,0
                      db 'Apa ciri dari tumbuhan monokotil ?                                                                                             ',10,'a. Berduri',10,'b. Biji Berkeping dua',10,'c. Biji berkeping satu',10,'d. Daun menjari',10,0
                      db 'Berapa otot yang dimilik telinga kucing ?                                                                                                                                     ',10,'a. 104',10,'b. 20',10,'c. 32',10,'d. 12',10,0
                      db 'Berapa kira-kira spesies serangga di bumi ?                                                                                                                   ',10,'a. 25 ribu',10,'b. 2 juta',10,'c. 3 juta',10,'d. 1 juta',10,0
                      db 'Hewan apakah yang bias membuat jaring ?                                                                                                    ',10,'a. Laba-laba',10,'b. Ular sawah',10,'c. Tikus mondok',10,'d. Berang-berang',10,0
                      db 'Apa sebutan alat kelamin betina pada tumbuhan ?                                                                                                         ',10,'a. Putik',10,'b. Kelopak',10,'c. Klorofil',10,'d. Benang sari',10,0
                      db 'Disebut apakah studi ilmiah anjing peliharaan ?                                                                                                         ',10,'a. Canology',10,'b. Kynology',10,'c. Lupology',10,'d. Heology',10,0
                      db 'Apa nama tanaman yang digunakan sebagai shampoo alami oleh penduduk asli Amerika ?                                                         ',10,'a. Ceri Choke',10,'b. Pohon Sap',10,'c. Tanaman Yucca',10,'d. Kubis sigung',10,0

	
	kunciKuliner db 'a','c','a','c','d','d','b','b','b','b'
	kunciBukuDanKata db 'a','d','b','a','d','b','c','c','c','d'
	kunciTeknologi db 'b','a','d','a','c','b','c','b','d','c'
	kunciVideoGame db 'b','c','d','b','b','c','a','d','c','c'
	kunciFloraDanFauna db 'a','b','b','c','c','d','a','a','b','c'
	
	nilaiPlayer1 dd 0
	nilaiPlayer2 dd 0
	
section .bss
	username1 resb 11
	username2 resb 11
	
	bacaReady resb 5
	bacaSesi resb 5
	bacaHello resb 5
	bacaKembali resb 5
	
	kategoriSesi1 resb 5
	kategoriSesi2 resb 5
	kategoriSesi3 resb 5
	
	bocaSoal1 resb 5
	bacaSoal2 resb 5
	bacaSoal3 resb 5
	bacaSoal4 resb 5
	bacaSoal5 resb 5

	time resd 1
    hasilRandom resd 1
    nilaiModulo resd 1
    bandingNilai1 resd 1
    bandingNilai2 resd 1
    bandingNilai3 resd 1
    soalNextPlayer1 resd 1
    soalNextPlayer2 resd 1
    soalNextPlayer3 resd 1
    jawaban resb 5
    
    nowPlaying resd 1
section .text
	global main
	
main:

startGame:
	call clearScreen
	call duelOtak
menu:
	
	call hello
	call clearScreen
	call intro
	call clearScreen
	call cetakKategori
	
	call sesi1
	call clearScreen
	call cetakNilai
	call cetakKategori
	jmp exit
	
	call sesi2
	call clearScreen
	call cetakNilai
	call cetakKategori
	
	call sesi3
	call clearScreen
	call cetakNilai
	call cetakKategori
	
	call sesi4
	call clearScreen
	call hasilAkhir
	call cetakNilai
	jmp menu
exit:
	mov eax,1
	mov ebx,0
	int 80h
