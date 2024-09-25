PENJELASAN KODE

ABOUT PAGE
- Scaffold: Komponen utama halaman yang menyediakan struktur dasar.
- AppBar: Menampilkan judul halaman dengan latar belakang hijau.
- Column: Mengatur konten dalam kolom vertikal.
- Text: Digunakan untuk menampilkan informasi seperti nama aplikasi, versi, deskripsi, dan kontak.

DASHBOARD PAGE
- List<Map<String, String>> todaySchedule: Menyimpan data jadwal hari ini.
- ListView.builder: Menghasilkan daftar dinamis berdasarkan jumlah item dalam todaySchedule.
- ListTile: Digunakan untuk menampilkan setiap acara dengan waktu yang terkait.

LOGIN PAGE
- TextEditingController: Mengelola teks yang dimasukkan ke dalam TextField.
- SharedPreferences: Menyimpan status login pengguna.
- Navigator: Mengalihkan pengguna ke Dashboard Page setelah login berhasil.

PROFILE PAGE
- Column: Menyusun elemen-elemen profil secara vertikal.
- CircleAvatar: Menampilkan gambar avatar pengguna.
- Card: Menampilkan informasi seperti nama, NIM, dan shift.

TASK PAGE
- GridView.builder: Menampilkan daftar tugas dalam bentuk grid.
- Card: Setiap tugas ditampilkan dalam card untuk memberikan tampilan yang menarik dan terorganisir.

SIDEMENU
1. Import Paket:
- Mengimpor paket yang diperlukan, termasuk Flutter dan Shared Preferences.

2. Class SideMenu:
- Merupakan widget stateless yang menampilkan menu samping untuk navigasi.

3. Fungsi _logout():
- Mengatur status login pengguna menjadi false dalam SharedPreferences dan mengarahkan pengguna kembali ke halaman login.

4. Metode build():
- Membangun antarmuka menu menggunakan Drawer, yang mencakup:
- UserAccountsDrawerHeader: Menampilkan informasi pengguna seperti nama dan email dengan gambar profil.
- ListView: Menampilkan daftar pilihan navigasi seperti Profile, Schedule, Task, dan About.
- ListTile untuk Logout: Menggunakan fungsi _logout saat pengguna memilih untuk keluar dari aplikasi.

MAIN
1. Import Paket:
- Mengimpor paket yang diperlukan untuk aplikasi, termasuk Flutter, Shared Preferences, dan halaman-halaman yang berbeda.

2. Fungsi main():
- WidgetsFlutterBinding.ensureInitialized() memastikan bahwa semua widget Flutter telah diinisialisasi sebelum menjalankan kode.
Mengambil status login dari SharedPreferences untuk mengetahui apakah pengguna sudah login atau belum.

3. MyApp Class:
- Merupakan widget utama aplikasi.
- Mengambil parameter isLoggedIn untuk menentukan apakah pengguna sudah login atau belum.

4. Metode build():
- Membangun antarmuka aplikasi menggunakan MaterialApp yang mengatur tema, judul, dan routing.
- Mengatur initialRoute berdasarkan status login pengguna (apakah ke halaman dashboard atau login).
- Mengatur daftar rute yang menghubungkan nama rute ke halaman yang sesuai.



SCREENSHOTS APLIKASI

//Login_Page.dart
![image](https://github.com/user-attachments/assets/09e18c80-295d-4c86-be24-02caac21d362)

//Dashboard_Page.dart
![image](https://github.com/user-attachments/assets/f668683e-299a-40df-8935-e77628375248)

//Profile_Page.dart
![image](https://github.com/user-attachments/assets/b31d6655-15f8-46ee-9e15-e8a9a3847b07)

//Task_Page.dart
![image](https://github.com/user-attachments/assets/9d875489-6bdf-4f66-9601-dd438c04fc6a)

//About_Page.dart
![image](https://github.com/user-attachments/assets/60746b9a-85d0-444b-b33f-f145aaf8e274)

//Sidemenu.dart
![image](https://github.com/user-attachments/assets/0fe87973-1aa6-449b-8722-84f434e20ae9)




