# Nama Proyek

## Penjelasan Proyek
Proyek ini adalah sebuah aplikasi web yang berfungsi sebagai admin panel untuk manajemen data pengguna (Users) dan postingan (Posts). Aplikasi ini memiliki fitur autentikasi, relasi antara tabel Users dan Posts, pencarian data, serta menampilkan data dalam bentuk halaman.

## Desain Database
Desain database aplikasi ini terdiri dari dua tabel utama, yaitu Users dan Posts. Berikut adalah skema tabel-tabelnya:

### Tabel Users
- `id` (Primary Key)
- `name` (Nama pengguna)
- `email` (Alamat email pengguna)
- `password` (Kata sandi pengguna)
- `email_verified_at` (Timestamp verifikasi email, dapat bernilai null)
- `remember_token` (Token untuk pengingat otentikasi)
- `created_at` (Timestamp pembuatan)
- `updated_at` (Timestamp pembaruan)

### Tabel Posts
- `id` (Primary Key)
- `user_id` (Foreign Key ke tabel Users, menunjukkan pemilik postingan)
- `title` (Judul postingan)
- `content` (Isi postingan)
- `created_at` (Timestamp pembuatan)
- `updated_at` (Timestamp pembaruan)

## Screenshot Aplikasi
Berikut adalah tangkapan layar (screenshot) dari aplikasi ini:

![Screenshot 1](screenshot1.png)
![Screenshot 2](screenshot2.png)

## Dependency
Aplikasi ini dibangun menggunakan Laravel 8, sebuah framework PHP yang kuat untuk pengembangan web. Beberapa dependency utama yang digunakan dalam proyek ini adalah:

- Laravel 8
- Bootstrap (untuk tampilan)
- Composer (untuk manajemen dependency PHP)
- npm (Node.js Package Manager, untuk manajemen asset)

## Informasi Lainnya
- Proyek ini menggunakan pola desain Model-View-Controller (MVC) untuk mengatur logika dan tampilan.
- Repository Git proyek ini dapat diakses di [https://github.com/username/nama-repo](https://github.com/username/nama-repo).
- Untuk menjalankan proyek ini, pastikan Anda telah menginstal PHP, Composer, dan Laravel di komputer Anda.

## Kontribusi
Silakan berkontribusi dengan mengirimkan *pull request* atau melaporkan masalah (*issue*) di repositori proyek ini.

Terima kasih atas kontribusi Anda!


Diagram
https://dbdiagram.io/d/demo_app-6519aafaffbf5169f0d287f1