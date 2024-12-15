# Pertemuan 09 | Kamera <img src="assets\p1l9.gif" width="250" height="450"/>

**NAMA : MOCHAMMAD ZAKARO AL FAJRI**

**NIM : 2241720175**

**KELAS : TI - 3F**

**NO ABSEN : 14**

## Praktikum 1: Mengambil Foto dengan Kamera di Flutter

### Langkah 1: Buat Project Baru

**Buatlah sebuah project flutter baru dengan nama kamera_flutter**

![alt text](assets/p1l1.png)

### Langkah 2: Tambah dependensi yang diperlukan

**Menambah menambahkan dependensi plugin**

![alt text](assets/p1l2b.png)

**Hasil :**

![alt text](assets/p1l2.png)

### Langkah 3: Ambil Sensor Kamera dari device

**Selanjutnya, kita perlu mengecek jumlah kamera yang tersedia pada perangkat menggunakan plugin camera seperti pada kode berikut ini. Kode ini letakkan dalam void main().**

![alt text](assets/p1l3.png)

### Langkah 4: Buat dan inisialisasi CameraController

**Membuat dan menginisialisasi CameraController**

![alt text](assets/p1l4.png)

### Langkah 5: Gunakan CameraPreview untuk menampilkan preview foto

**Menggunakan widget `CameraPreview` dari package camera untuk menampilkan preview foto.**

![alt text](assets/p1l5.png)

### Langkah 6: Ambil foto dengan CameraController

![alt text](assets/p1l6.png)

### Langkah 7: Buat widget baru DisplayPictureScreen

**Buatlah file baru pada folder widget yang berisi kode berikut.**

![alt text](assets/p1l7.png)

### Langkah 8: Edit main.dart

**Edit pada file ini bagian `runApp`.**

![alt text](assets/p1l8.png)

### Langkah 9: Menampilkan hasil foto

**Tambahkan kode seperti berikut pada bagian `try / catch` agar dapat menampilkan hasil foto pada `DisplayPictureScreen.`**

![alt text](assets/p1l9.png)

### Hasil : 

<img src="assets\p1hasil1.jpg" width="250" height="450"/>   <img src="assets\p1hasil2.jpg" width="250" height="450"/>

## Praktikum 2: Membuat photo filter carousel

### Langkah 1: Buat project baru

**Buatlah project flutter baru di pertemuan 09 dengan nama `photo_filter_carousel`**

![alt text](assets/p2l1.png)

### Langkah 2: Buat widget Selector ring dan dark gradient

**Buatlah folder widget dan file baru yang berisi kode berikut.**

![alt text](assets/p2l2.png)

### Langkah 3: Buat widget photo filter carousel

**Buat file baru di folder widget dengan kode seperti berikut.**

![alt text](assets/p2l3.png)

### Langkah 4: Membuat filter warna - bagian 1

**Buat file baru di folder widget seperti kode berikut.**

![alt text](assets/p2l4.png)

### Langkah 5: Membuat filter warna

**Buat file baru di folder widget seperti kode berikut ini.**

![alt text](assets/p2l5.png)

### Langkah 6: Implementasi filter carousel

**Terakhir, kita impor widget `PhotoFilterCarousel` ke main seperti kode berikut ini.**

![alt text](assets/p2l6.png)

**Hasil :**

<img src="assets\p2hasil.gif" width="250" height="450"/> 

## Tugas Praktikum

#### 1. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!

- Men-copy widget pada `photo_filter_corousel` ke `kamera_flutter`

![alt text](assets/s2a.png)

- Menambahkan parameter `filePath` pada `PhotoFilterCarousel`

![alt text](assets/s2b.png)

- Menambahkan `PhotoFilterCarousel` pada `DisplayPictureScreen`

![alt text](assets/s2c.png)

- Hasil : 

<img src="assets\p3hasil.gif" width="250" height="450"/> 

#### 2. Jelaskan maksud void async pada praktikum 1?

Jawab : Penggunaan `void async` untuk mengubah sebuah fungsi menjadi fungsi asynchronous yang dapat dieksekusi bersamaan dengan proses lainnya, yang berarti fungsi tersebut tidak perlu menunggu penyelesaian proses yang sedang berlangsung.

#### 3. Jelaskan fungsi dari anotasi @immutable dan @override ?

- @immutable: Anotasi ini menunjukkan bahwa objek atau kelas tidak dapat diubah setelah dibuat. Semua properti dalam kelas yang diberi anotasi ini harus bersifat final, memastikan objek tetap (immutable) sepanjang waktu.

- @override: Anotasi ini digunakan untuk menandakan bahwa metode dalam kelas turunan menggantikan implementasi metode yang ada di kelas induk. Ini membantu memastikan bahwa metode yang di-override sesuai dengan metode di kelas induk dan menghindari kesalahan penamaan.

