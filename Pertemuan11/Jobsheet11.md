# Jobsheet 11 | Pemrograman Asynchronous

**NAMA : MOCHAMMAD ZAKARO AL FAJRI**

**KELAS : TI - 3F**

**ABSEN : 14**

**NIM : 2241720175**

---
## Praktikum 1: Mengunduh Data dari Web Service (API)

### Langkah 1: Buat Project Baru

**Buatlah sebuah project flutter baru dengan nama books di folder src week-11 repository GitHub Anda.**

![alt text](assets/p1l1.png)

### Langkah 2: Cek file pubspec.yaml
**Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini seperti berikut.**

![alt text](assets/p1l2.png)

### Langkah 3: Buka file main.dart

**Soal 1 Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.**

![alt text](assets/p1l3.png)

### Langkah 4: Tambah method getData()

**Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books.**

![alt text](assets/p1l4.png)

**Soal 2 :** 

- **Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.**

![alt text](assets/p1l4a.png)

-  **Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W11: Soal 2".**

![alt text](assets/p1l4s2.png)

### Langkah 5: Tambah kode di ElevatedButton

**Tambahkan kode pada onPressed di ElevatedButton**

![alt text](assets/p1l5.png)

**Soal 3 :**

**Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!**

Jawab : Metode substring digunakan untuk mengambil bagian tertentu dari sebuah string berdasarkan indeks yang ditentukan. Sementara itu, catchError berfungsi untuk menangani kesalahan yang muncul dalam kode.

**Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 3".**

![alt text](assets/p1l5s3.gif)

## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

### Langkah 1: Buka file main.dart

**Tambahkan tiga method berisi kode seperti berikut di dalam class _FuturePageState.**

![alt text](assets/p2l1.png)

### Langkah 2: Tambah method count()

**Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.**

![alt text](assets/p2l2.png)

### Langkah 3: Panggil count()

**Lakukan comment kode sebelumnya, ubah isi kode onPressed()**

![alt text](assets/p2l3.png)

### Langkah 4: Run

**Akhirnya, run atau tekan F5 jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.**

![alt text](assets/p2l4.gif)

**Soal 4:**

**Jelaskan maksud kode langkah 1 dan 2 tersebut!**

Jawab : Langkah 1 adalah fungsi asinkron yang masing-masing menunggu selama 3 detik sebelum mengembalikan nilai integer (1, 2, dan 3).

**Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 4".**

![alt text](assets/p2l4.gif)
