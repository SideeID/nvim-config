## Dokumentasi Key Binding

### Mode Dasar
#### Mode Normal
- `i` - Masuk mode insert
- `v` - Masuk mode visual
- `V` - Masuk mode visual line
- `Esc` atau `Ctrl + [` - Kembali ke mode normal
- `:` - Masuk mode command

### Navigasi Dasar (Mode Normal)
- `h` - Pindah ke kiri
- `j` - Pindah ke bawah
- `k` - Pindah ke atas
- `l` - Pindah ke kanan
- `w` - Lompat ke awal kata berikutnya
- `b` - Lompat ke awal kata sebelumnya
- `e` - Lompat ke akhir kata berikutnya
- `0` - Pindah ke awal baris
- `$` - Pindah ke akhir baris
- `gg` - Pindah ke awal file
- `G` - Pindah ke akhir file
- `Ctrl + u` - Scroll setengah layar ke atas
- `Ctrl + d` - Scroll setengah layar ke bawah
- `zz` - Posisikan baris saat ini ke tengah layar

### Editing Dasar
- `u` - Undo
- `Ctrl + r` - Redo
- `dd` - Cut/delete baris
- `yy` - Copy baris
- `p` - Paste setelah kursor
- `P` - Paste sebelum kursor
- `x` - Hapus karakter di bawah kursor
- `r` - Replace satu karakter
- `cc` - Ganti isi baris
- `ciw` - Ganti kata di bawah kursor
- `diw` - Hapus kata di bawah kursor
- `D` - Hapus dari kursor sampai akhir baris

### Pencarian dan Penggantian
- `/kata` - Cari kata ke depan
- `?kata` - Cari kata ke belakang
- `n` - Lompat ke hasil pencarian berikutnya
- `N` - Lompat ke hasil pencarian sebelumnya
- `:%s/lama/baru/g` - Ganti semua kemunculan 'lama' dengan 'baru'
- `:%s/lama/baru/gc` - Ganti dengan konfirmasi

### Save dan Exit
- `:w` - Simpan file
- `:q` - Keluar
- `:wq` atau `:x` - Simpan dan keluar
- `:q!` - Keluar tanpa menyimpan
- `ZZ` - Simpan dan keluar

## Pengaturan Custom

### Navigasi Jendela
- `Ctrl + h` - Pindah ke jendela kiri
- `Ctrl + l` - Pindah ke jendela kanan
- `Ctrl + j` - Pindah ke jendela bawah
- `Ctrl + k` - Pindah ke jendela atas

### Manajemen Buffer
- `Tab` - Buffer selanjutnya
- `Shift + Tab` - Buffer sebelumnya
- `Spasi + x` - Tutup buffer saat ini

### Nomor Baris
- `Spasi + n` - Aktif/nonaktifkan nomor baris
- `Spasi + rn` - Aktif/nonaktifkan nomor baris relatif

### Navigasi File
- `Spasi + ff` - Cari file
- `Spasi + fw` - Pencarian teks di semua file
- `Spasi + fb` - Cari di buffer yang terbuka
- `Spasi + fh` - Cari di halaman bantuan

### Terminal
- `Alt + i` - Buka/tutup terminal mengambang
- `Alt + h` - Buka/tutup terminal horizontal
- `Alt + v` - Buka/tutup terminal vertikal
- `Ctrl + x` - Keluar dari mode terminal

### Integrasi Git
- `Spasi + gh` - Pratinjau perubahan
- `Spasi + gb` - Aktif/nonaktifkan blame line
- `Spasi + gt` - Buka Neogit

### LSP (Language Server Protocol)
- `gd` - Pergi ke definisi
- `gi` - Pergi ke implementasi
- `gr` - Temukan referensi
- `Spasi + ca` - Aksi kode
- `F2` - Ubah nama simbol
- `Spasi + fm` - Format kode

### Pelengkapan Kode
- `Ctrl + Spasi` - Tampilkan saran pelengkapan
- `Tab` - Pilih item selanjutnya
- `Shift + Tab` - Pilih item sebelumnya

### Komentar
- `Spasi + /` - Toggle komentar baris

### Copilot
- `Alt + l` - Menerima saran
- `Alt + ]` - Saran berikutnya
- `Alt + [` - Saran sebelumnya
- `Ctrl + ]` - Menolak saran
- `Alt + Enter` - Membuka panel Copilot
- `:Copilot enable` - Aktifkan Copilot
- `:Copilot disable` - Nonaktifkan Copilot

`Alt + ]` - Saran berikutnya
`Alt + [` - Saran sebelumnya
`Ctrl + ]` - Menolak saran
`Alt + Enter` - Membuka panel Copilot
`[[ dan ]]` - Navigasi dalam panel
`Enter` - Menerima saran dari panel
`gr` - Refresh panel
`:Copilot status` - Cek status Copilot
`:Copilot enable` - Aktifkan Copilot
`:Copilot disable` - Nonaktifkan Copilot
`:Copilot panel` - Buka panel saran
`:Copilot suggestion` - Toggle saran
